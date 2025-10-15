import QtWebEngine 1.10

Item {
    anchors.fill : parent


    Flickable {
        anchors.fill: parent
        contentHeight: headerColumn.height

        ScrollBar.vertical: ScrollBar {
            id: controllerListScrollBar
            anchors.right: parent.right
            width: 10
            visible: true
            policy: ScrollBar.AlwaysOn
            height: parent.availableHeight
            contentItem: Rectangle {
                radius: parent.width / 2
                color: theme.scrollBar
            }
        }

        Column {
            id : headerColumn
            y : 0
            width : parent.width - 20
            spacing : 0

            // Logo Section
            Rectangle {
                width : parent.width
                height : 120
                color : "transparent"

                Image {
                    id: logoImage
                    source : "https://raw.githubusercontent.com/zippo-2024/RmlAPP-Sync/main/rainbow-music-led-logo.webp"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.leftMargin: 20
                    anchors.rightMargin: 20
                    anchors.top : parent.top
                    anchors.topMargin : 20
                    height : 80
                    fillMode : Image.PreserveAspectFit
                }
            }

            // Vietnamese Section
            Rectangle {
                width : parent.width
                height : vietnameseContent.height + 40
                color : "transparent"
                radius : 8
                border.color : "#2a2a2a"
                border.width : 1

                Column {
                    id : vietnameseContent
                    width : parent.width - 40
                    anchors.horizontalCenter : parent.horizontalCenter
                    anchors.top : parent.top
                    anchors.topMargin : 20
                    spacing : 10

                    Text {
                        color : theme.primarytextcolor
                        text : "🇻🇳 RmlAPP Sync - Hướng dẫn sử dụng"
                        font.pixelSize : 18
                        font.family : "Poppins"
                        font.bold : true
                        width : parent.width
                        wrapMode : Text.WordWrap
                    }

                    Rectangle {
                        width : parent.width
                        height : 2
                        color : "#3a3a3a"
                    }

                    Text {
                        color : theme.primarytextcolor
                        text : "Plugin này cho phép đồng bộ hiệu ứng LED từ phần mềm SignalRGB sang phần mềm Rainbow Music Led, giúp bạn ĐỒNG BỘ LED do Rainbow Music Led sản xuất với LED Main, Ram, Fan, Bàn phím, Chuột,... và các LED của hãng khác"
                        font.pixelSize : 14
                        font.family : "Poppins"
                        font.bold : false
                        topPadding : 10
                        bottomPadding : 10
                        width : parent.width
                        wrapMode : Text.WordWrap
                        lineHeight : 1.3
                    }

                    Text {
                        color : theme.primarytextcolor
                        text : "📥 Bước 1: Cài đặt phần mềm Rainbow Music Led"
                        font.pixelSize : 15
                        font.family : "Poppins"
                        font.bold : true
                        topPadding : 5
                        width : parent.width
                        wrapMode : Text.WordWrap
                    }

                    Text {
                        color : theme.primarytextcolor
                        text : '• Tải và cài đặt phần mềm Rainbow Music Led <html><a href="https://rainbowmusicled.com/huong-dan"> TẠI ĐÂY</a></html> \n• Mở trang điều khiển của nó => chọn hiệu ứng SignalRGB'
                        font.pixelSize : 13
                        font.family : "Poppins"
                        font.bold : false
                        bottomPadding : 10
                        width : parent.width
                        wrapMode : Text.WordWrap
                        lineHeight : 1.4
                        onLinkActivated : Qt.openUrlExternally('https://rainbowmusicled.com/huong-dan')
                    }

                    Text {
                        color : theme.primarytextcolor
                        text : "🔌 Bước 2: Cài đặt bố cục"
                        font.pixelSize : 15
                        font.family : "Poppins"
                        font.bold : true
                        topPadding : 5
                        width : parent.width
                        wrapMode : Text.WordWrap
                    }

                    Text {
                        color : theme.primarytextcolor
                        text : '• Vào phần mềm SignalRGB => mục Lighting => ấn tab Layout => chọn thiết bị Rainbow Music Led => kéo giãn bố cục của nó toàn màn biểu diễn hiệu ứng bên trái'
                        font.pixelSize : 13
                        font.family : "Poppins"
                        font.bold : false
                        bottomPadding : 10
                        width : parent.width
                        wrapMode : Text.WordWrap
                        lineHeight : 1.4
                    }
                }
            }

            // Spacer
            Rectangle {
                width : parent.width
                height : 30
                color : "transparent"
            }

            // English Section
            Rectangle {
                width : parent.width
                height : englishContent.height + 40
                color : "transparent"
                radius : 8
                border.color : "#2a2a2a"
                border.width : 1

                Column {
                    id : englishContent
                    width : parent.width - 40
                    anchors.horizontalCenter : parent.horizontalCenter
                    anchors.top : parent.top
                    anchors.topMargin : 20
                    spacing : 10

                    Text {
                        color : theme.primarytextcolor
                        text : "🇺🇸 RmlAPP Sync - User Guide"
                        font.pixelSize : 18
                        font.family : "Poppins"
                        font.bold : true
                        width : parent.width
                        wrapMode : Text.WordWrap
                    }

                    Rectangle {
                        width : parent.width
                        height : 2
                        color : "#3a3a3a"
                    }

                    Text {
                        color : theme.primarytextcolor
                        text : "This plugin allows you to synchronize LED effects from SignalRGB software to Rainbow Music Led software, helping you SYNC LEDs manufactured by Rainbow Music Led with Main LED, RAM, Fan, Keyboard, Mouse,... and LEDs from other brands"
                        font.pixelSize : 14
                        font.family : "Poppins"
                        font.bold : false
                        topPadding : 10
                        bottomPadding : 10
                        width : parent.width
                        wrapMode : Text.WordWrap
                        lineHeight : 1.3
                    }

                    Text {
                        color : theme.primarytextcolor
                        text : "📥 Step 1: Install Rainbow Music Led Software"
                        font.pixelSize : 15
                        font.family : "Poppins"
                        font.bold : true
                        topPadding : 5
                        width : parent.width
                        wrapMode : Text.WordWrap
                    }

                    Text {
                        color : theme.primarytextcolor
                        text : '• Download and install Rainbow Music Led software <html><a href="https://rainbowmusicled.com/huong-dan"> HERE</a></html> \n• Open its Settings => select SignalRGB effect'
                        font.pixelSize : 13
                        font.family : "Poppins"
                        font.bold : false
                        bottomPadding : 10
                        width : parent.width
                        wrapMode : Text.WordWrap
                        lineHeight : 1.4
                        onLinkActivated : Qt.openUrlExternally('https://rainbowmusicled.com/huong-dan')
                    }

                    Text {
                        color : theme.primarytextcolor
                        text : "🔌 Step 2: Setting layout"
                        font.pixelSize : 15
                        font.family : "Poppins"
                        font.bold : true
                        topPadding : 5
                        width : parent.width
                        wrapMode : Text.WordWrap
                    }

                    Text {
                        color : theme.primarytextcolor
                        text : '• Go to SignalRGB software => Lighting => click Layout tab => select Rainbow Music Led device => drag and expand its layout to full screen on the left effect display'
                        font.pixelSize : 13
                        font.family : "Poppins"
                        font.bold : false
                        bottomPadding : 10
                        width : parent.width
                        wrapMode : Text.WordWrap
                        lineHeight : 1.4
                    }
                }
            }

            // Spacer
            Rectangle {
                width : parent.width
                height : 30
                color : "transparent"
            }

            // Video Tutorial Section
            Rectangle {
                width : parent.width
                height : videoContent.height + 40
                color : "transparent"
                radius : 8
                border.color : "#2a2a2a"
                border.width : 1

                Column {
                    id : videoContent
                    width : parent.width - 40
                    anchors.horizontalCenter : parent.horizontalCenter
                    anchors.top : parent.top
                    anchors.topMargin : 20
                    spacing : 15

                    Text {
                        color : theme.primarytextcolor
                        text : "🎥 Video Hướng Dẫn / Video Tutorial"
                        font.pixelSize : 18
                        font.family : "Poppins"
                        font.bold : true
                        width : parent.width
                        wrapMode : Text.WordWrap
                        horizontalAlignment : Text.AlignHCenter
                    }

                    Rectangle {
                        width : parent.width
                        height : 2
                        color : "#3a3a3a"
                    }

                    Text {
                        color : theme.primarytextcolor
                        text : "Xem video hướng dẫn chi tiết cách cài đặt và sử dụng\nWatch detailed installation and usage tutorial"
                        font.pixelSize : 13
                        font.family : "Poppins"
                        font.bold : false
                        width : parent.width
                        wrapMode : Text.WordWrap
                        horizontalAlignment : Text.AlignHCenter
                        lineHeight : 1.4
                        opacity : 0.8
                    }

                    // Video Container
                    Rectangle {
                        width : parent.width
                        height : width * 9 / 16  // 16:9 aspect ratio
                        color : "#000000"
                        radius : 8
                        border.color : "#3a3a3a"
                        border.width : 2

                        WebEngineView {
                            id: youtubeVideo
                            anchors.fill : parent
                            anchors.margins : 2
                            url : "https://www.youtube.com/embed/BqJwFeGgqiI?rel=0&modestbranding=1"

                            settings.pluginsEnabled: true
                            settings.javascriptEnabled: true
                            settings.autoLoadImages: true

                            onLoadingChanged: function(loadRequest) {
                                if (loadRequest.status === WebEngineView.LoadFailedStatus) {
                                    console.log("Failed to load video")
                                }
                            }
                        }

                        // Loading indicator
                        Rectangle {
                            anchors.centerIn : parent
                            width : 60
                            height : 60
                            radius : 30
                            color : "#2a2a2a"
                            visible : youtubeVideo.loading

                            Text {
                                anchors.centerIn : parent
                                text : "⏳"
                                font.pixelSize : 30
                                color : theme.primarytextcolor
                            }
                        }
                    }
                }
            }

            // Bottom Spacer
            Rectangle {
                width : parent.width
                height : 20
                color : "transparent"
            }
        }
    }
}
