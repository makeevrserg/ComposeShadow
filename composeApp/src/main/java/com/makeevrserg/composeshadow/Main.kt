package com.makeevrserg.composeshadow

import ComposeApplication
import androidx.compose.ui.unit.dp
import androidx.compose.ui.window.Window
import androidx.compose.ui.window.application
import androidx.compose.ui.window.rememberWindowState
import java.awt.Dimension

fun main() = application {
    Window(
        title = "ComposeShadow",
        state = rememberWindowState(width = 800.dp, height = 600.dp),
        onCloseRequest = ::exitApplication,
        content = {
            window.minimumSize = Dimension(350, 600)
            ComposeApplication()
        }
    )
}