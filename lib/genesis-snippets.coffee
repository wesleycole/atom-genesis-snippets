GenesisSnippetsView = require './genesis-snippets-view'
{CompositeDisposable} = require 'atom'

module.exports = GenesisSnippets =
  genesisSnippetsView: null
  modalPanel: null
  subscriptions: null

  activate: (state) ->
    @genesisSnippetsView = new GenesisSnippetsView(state.genesisSnippetsViewState)
    @modalPanel = atom.workspace.addModalPanel(item: @genesisSnippetsView.getElement(), visible: false)

    # Events subscribed to in atom's system can be easily cleaned up with a CompositeDisposable
    @subscriptions = new CompositeDisposable

    # Register command that toggles this view
    @subscriptions.add atom.commands.add 'atom-workspace', 'genesis-snippets:toggle': => @toggle()

  deactivate: ->
    @modalPanel.destroy()
    @subscriptions.dispose()
    @genesisSnippetsView.destroy()

  serialize: ->
    genesisSnippetsViewState: @genesisSnippetsView.serialize()

  toggle: ->
    console.log 'GenesisSnippets was toggled!'

    if @modalPanel.isVisible()
      @modalPanel.hide()
    else
      @modalPanel.show()
