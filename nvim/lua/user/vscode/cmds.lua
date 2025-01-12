local M = {}

function M.setup()
    local vscode = require('vscode-neovim')

    local core = require("user.core")

    core.cmd.register_cmd("editor.action.code_actions", vscode.action, "editor.action.quickFix")
    core.cmd.register_cmd("editor.action.format_document", vscode.action, "editor.action.formatDocument")
    core.cmd.register_cmd("editor.action.format_selection", vscode.action, "editor.action.formatSelection")
    core.cmd.register_cmd("editor.action.goto_declaration", vscode.action, "editor.action.goToDeclaration")
    core.cmd.register_cmd("editor.action.goto_definition", vscode.action, "editor.action.revealDefinition")
    core.cmd.register_cmd("editor.action.goto_implementation", vscode.action, "editor.action.goToImplementation")
    --core.cmd.register_cmd("editor.action.goto_references", vscode.action, "editor.action.referenceSearch.trigger")
    core.cmd.register_cmd("editor.action.goto_references", vscode.action, "references-view.findReferences")
    core.cmd.register_cmd("editor.action.goto_type_definition", vscode.action, "editor.action.goToTypeDefinition")
    core.cmd.register_cmd("editor.action.goto_incoming_calls", vscode.action, "editor.show.incomingCalls")
    core.cmd.register_cmd("editor.action.goto_outgoing_calls", vscode.action, "editor.show.outgoingCalls")
    core.cmd.register_cmd("editor.action.goto_next_diagnostic", vscode.action, "editor.action.marker.next")
    core.cmd.register_cmd("editor.action.goto_prev_diagnostic", vscode.action, "editor.action.marker.prev")
    core.cmd.register_cmd("editor.action.rename_symbol", vscode.action, "editor.action.rename")
    core.cmd.register_cmd("editor.action.show_hover", vscode.action, "editor.action.showHover")
    core.cmd.register_cmd("editor.action.source_actions", vscode.action, "editor.action.sourceAction")
    core.cmd.register_cmd("editor.action.toggle_line_comment", vscode.action, "editor.action.commentLine")
    core.cmd.register_cmd("editor.action.toggle_block_comment", vscode.action, "editor.action.blockComment")
    core.cmd.register_cmd("editor.search", vscode.action, "settings.action.search")

    core.cmd.register_cmd("git.commit", vscode.action, "git.commit")
    core.cmd.register_cmd("git.git-graph", vscode.action, "git-graph.view")
    core.cmd.register_cmd("git.stage_selected", vscode.action, "git.stageSelectedRanges")
    core.cmd.register_cmd("git.unstage_selected", vscode.action, "git.unstageSelectedRanges")
    core.cmd.register_cmd("git.revert_selected", vscode.action, "git.revertSelectedRanges")
    core.cmd.register_cmd("git.preview_hunk", vscode.action, "editor.action.dirtydiff.next")
    core.cmd.register_cmd("git.stage_file", vscode.action, "git.stageFile")
    core.cmd.register_cmd("git.unstage_file", vscode.action, "git.unstageFile")

    core.cmd.register_cmd("workbench.view.explorer", vscode.action, "workbench.view.explorer")
    core.cmd.register_cmd("workbench.view.problems", vscode.action, "workbench.actions.view.problems")
    core.cmd.register_cmd("workbench.view.git", vscode.action, "workbench.view.scm")
    core.cmd.register_cmd("workbench.view.quickfix", vscode.action, "problems.action.showQuickFixes")
    core.cmd.register_cmd("workbench.view.debug", vscode.action, "workbench.view.debug")

    core.cmd.register_cmd("editor.debug.action.toggle_breakpoint", vscode.action, "editor.debug.action.toggleInlineBreakpoint")

    core.cmd.register_cmd("workbench.debug.action.start", vscode.action, "workbench.action.debug.start")
    core.cmd.register_cmd("workbench.debug.action.continue", vscode.action, "workbench.action.debug.continue")
    core.cmd.register_cmd("workbench.debug.action.pause", vscode.action, "workbench.action.debug.pause")
    core.cmd.register_cmd("workbench.debug.action.restart", vscode.action, "workbench.action.debug.restart")
    core.cmd.register_cmd("workbench.debug.action.terminate", vscode.action, "workbench.action.debug.stop")
    core.cmd.register_cmd("workbench.debug.action.step_over", vscode.action, "workbench.action.debug.stepOver")
    core.cmd.register_cmd("workbench.debug.action.step_into", vscode.action, "workbench.action.debug.stepInto")
    core.cmd.register_cmd("workbench.debug.action.step_out", vscode.action, "workbench.action.debug.stepOut")
    core.cmd.register_cmd("workbench.debug.action.run_to_cursor", vscode.action, "editor.debug.action.runToCursor")


end

return M

--[[

workbench.files.compare_selected
workbench.files.select_for_compare
workbench.view.bookmarks

workbench.view.loclist

workbench.view.plugin-manager

workbench.view.search
workbench.view.symbol-navigator
workbench.view.terminal

editor.action.show_diagnostic

git.diff
git.fetch
git.mergetool
git.preview_hunk
git.pull
git.push
git.rebase_interactive
git.revert_file
git.revert_hunk
git.stage_file
git.stage_hunk
git.stash
git.status
workbench.action.close_active_editor
workbench.action.close_all_editors
workbench.action.close_other_editors
workbench.action.quick_open
--]]

