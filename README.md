# Groups Shelf

Groups Shelf is a [Glyphs](https://glyphsapp.com/) kerning group manager.  
<img src="./img/GroupsShelf.png" width="701" />

- Visualise and manage kerning groups 
- Rename groups while copying kerning values
- Automatically add missing composites
- **New (2026)**: Japanese localization and Vertical Kerning support

### Installation

1. [Install using the Glyphs Plugin Manager](https://pkolchanov.ru/redirects/groupsshelf.html). Or double-click the `GroupsShelf.glyphsPlugin` file to install the plugin manually. Glyphs will show a confirmation pop-up. 
2. Open the plugin panel using Window → Groups Shelf 

### 日本語説明
Groups Shelf は、[Glyphs](https://glyphsapp.com/) 用のカーニンググループ管理プラグインです。

- **カーニンググループの可視化と管理**: 直感的なインターフェースでグループと所属グリフを確認できます。
- **グループ名の一括変更**: カーニング値を保持したまま、プレフィックスやサフィックスの追加・置換が可能です（正規表現対応）。
- **自動的な複合字の追加**: ベースとなる文字がグループにある場合、アクセント付き文字などの複合字を自動で追加します。
- **縦カーニング対応**: 縦方向のカーニンググループ（Top/Bottom）およびペアの編集に対応しました。
- **UIの日本語化**: 設定言語に合わせて日本語で表示されます。

### Group View
Group View shows all glyphs of the kerning group.

- Horizontal and Vertical modes can be toggled at the top-right of the window.
- `-` and `+` buttons in the bottom will remove or add glyphs selected in the Edit View to the selected group.
- `Add missing composites` in the group menu will add composite glyphs if the parent glyph is presented in the group. For example, if `A` is in the group, `Á` will be added. 
- `Remove group` in the group menu will remove the selected goup and kerning pairs. 

<img src="./img/GroupMenu.png" width="600" />

### Rename Groups palette
The palette to rename all groups in the font. It's useful for removing or adding prefixes and suffixes, like `KO_` and `.1`. 
You can choose between substring or regular expression substitution. It's also updates related kerning pairs. 

<img src="./img/RenameGroups.png" width="230" />

### Fix Groups palette

- `Remove groups without kern pairs` literally deletes those groups. 
- `Add missing composites` will add composites for all groups.

<img src="./img/FixGroups.png" width="230" />

### Build Instructions (for Developers)
To build the plugin from source:

1. Clone the repository.
2. Run the following command in the project root:
   ```bash
   xcodebuild -scheme GroupsShelf -configuration Release CONFIGURATION_BUILD_DIR=./build CODE_SIGN_IDENTITY="-" CODE_SIGNING_REQUIRED=YES INFOPLIST_KEY_NSPrincipalClass="GroupsShelf" INFOPLIST_KEY_CFBundleName="Groups Shelf"
   ```
3. Copy the built `GroupsShelf.glyphsPlugin` from the `build/` directory to the project root or your Glyphs Plugins folder.

### Credits 
> This project is sponsored by [bolditalic.studio](https://bolditalic.studio/)

Pavel Kolchanov, Dmitry Goloub, 2025 (Updated 2026 for Japanese and Vertical support)
