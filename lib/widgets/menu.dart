//region imports
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:teste_flutter/widgets/animation/animation_demo.dart';
import 'package:teste_flutter/widgets/animation/animations_fade.dart';
import 'package:teste_flutter/widgets/appbar/appbar.dart';
import 'package:teste_flutter/widgets/appbar/appbar_bottom.dart';
import 'package:teste_flutter/widgets/calculator/calculator_demo.dart';
import 'package:teste_flutter/widgets/colors_demo.dart';
import 'package:teste_flutter/widgets/contacts_demo.dart';
import 'package:teste_flutter/widgets/cupertino/cupertino_activity_indicator_demo.dart';
import 'package:teste_flutter/widgets/cupertino/cupertino_buttons_demo.dart';
import 'package:teste_flutter/widgets/cupertino/cupertino_dialog_demo.dart';
import 'package:teste_flutter/widgets/cupertino/cupertino_navigation_demo.dart';
import 'package:teste_flutter/widgets/cupertino/cupertino_picker_demo.dart';
import 'package:teste_flutter/widgets/cupertino/cupertino_slider_demo.dart';
import 'package:teste_flutter/widgets/cupertino/cupertino_switch_demo.dart';
import 'package:teste_flutter/widgets/images/images_demo.dart';
import 'package:teste_flutter/widgets/material/bottom_navigation_demo.dart';
import 'package:teste_flutter/widgets/material/buttons_demo.dart';
import 'package:teste_flutter/widgets/material/cards_demo.dart';
import 'package:teste_flutter/widgets/custom_fonts.dart';
import 'package:teste_flutter/widgets/gestures/dismiss_swipe.dart';
import 'package:teste_flutter/widgets/gestures/gestures_tap.dart';
import 'package:teste_flutter/widgets/images/images.dart';
import 'package:teste_flutter/widgets/images/images_cached.dart';
import 'package:teste_flutter/widgets/images/images_fading.dart';
import 'package:teste_flutter/widgets/lists/lists_animated.dart';
import 'package:teste_flutter/widgets/lists/lists_basic.dart';
import 'package:teste_flutter/widgets/lists/lists_grid.dart';
import 'package:teste_flutter/widgets/lists/lists_horizontal.dart';
import 'package:teste_flutter/widgets/lists/lists_large.dart';
import 'package:teste_flutter/widgets/lists/lists_mixed.dart';
import 'package:teste_flutter/widgets/login.dart';
import 'package:teste_flutter/widgets/material/chip_demo.dart';
import 'package:teste_flutter/widgets/material/data_table_demo.dart';
import 'package:teste_flutter/widgets/material/date_and_time_picker_demo.dart';
import 'package:teste_flutter/widgets/material/dialog_demo.dart';
import 'package:teste_flutter/widgets/material/drawer_demo.dart';
import 'package:teste_flutter/widgets/material/expansion_panels_demo.dart';
import 'package:teste_flutter/widgets/material/grid_list_demo.dart';
import 'package:teste_flutter/widgets/material/icons_demo.dart';
import 'package:teste_flutter/widgets/material/leave_behind_demo.dart';
import 'package:teste_flutter/widgets/material/list_demo.dart';
import 'package:teste_flutter/widgets/material/menu_demo.dart';
import 'package:teste_flutter/widgets/material/modal_bottom_sheet_demo.dart';
import 'package:teste_flutter/widgets/material/overscroll_demo.dart';
import 'package:teste_flutter/widgets/material/page_selector_demo.dart';
import 'package:teste_flutter/widgets/material/persistent_bottom_sheet_demo.dart';
import 'package:teste_flutter/widgets/material/progress_indicator_demo.dart';
import 'package:teste_flutter/widgets/material/scrollable_tabs_demo.dart';
import 'package:teste_flutter/widgets/material/selection_controls_demo.dart';
import 'package:teste_flutter/widgets/material/slider_demo.dart';
import 'package:teste_flutter/widgets/material/snack_bar_demo.dart';
import 'package:teste_flutter/widgets/material/tabs_demo.dart';
import 'package:teste_flutter/widgets/material/tabs_fab_demo.dart';
import 'package:teste_flutter/widgets/material/text_form_field_demo.dart';
import 'package:teste_flutter/widgets/material/tooltip_demo.dart';
import 'package:teste_flutter/widgets/material/two_level_list_demo.dart';
import 'package:teste_flutter/widgets/navigation/navigation_return_data.dart';
import 'package:teste_flutter/widgets/pesto_demo.dart';
import 'package:teste_flutter/widgets/ripple.dart';
import 'package:teste_flutter/widgets/shrine/shrine_demo.dart';
import 'package:teste_flutter/widgets/storage/storage_file.dart';
import 'package:teste_flutter/widgets/storage/storage_key_value.dart';
import 'package:teste_flutter/widgets/tabbar_sample.dart';
import 'package:teste_flutter/widgets/textfield.dart';
import 'package:teste_flutter/widgets/theme_sample.dart';
import 'package:teste_flutter/widgets/typography_demo.dart';
import 'package:teste_flutter/widgets/video_demo.dart';
//endregion

class Menu extends StatelessWidget {
  final appTitle = 'Flutter Samples';

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: appTitle,
      home: new MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var materialListsExpandTile=_createExpansionTile(context, 'Lists', <Widget>[
      _createListTile(context, 'Dismiss Swipe', new DismissSwipe()),
      _createListTile(context, 'GridList', new GridListDemo()),
      _createListTile(context, 'Leave Behind', new LeaveBehindDemo()),
      _createListTile(context, 'Lists', new ListDemo()),
      _createListTile(context, 'Lists Basic', new ListsBasic()),
      _createListTile(context, 'Lists Animated', new AnimatedListSample()),
      _createListTile(context, 'Lists Grid', new ListsGrid()),
      _createListTile(context, 'Lists Horizontal', new ListsHorizonal()),
      _createListTile(context, 'Lists Large', new ListsLarge(items: new List<String>.generate(10000, (i) => "Item $i"))),
      _createListTile(context, 'Lists Mixed', new ListsMixed()),
      _createListTile(context, 'Over Scroll', new OverscrollDemo()),
      _createListTile(context, 'Two Level List', new TwoLevelListDemo()),
      ]);

    var materialExpandTile = _createExpansionTile(context, 'Material Widgets', <Widget>[
      _createListTile(context, 'AppBar', new Appbar()),
      _createListTile(context, 'AppBar Bottom', new AppBarBottom()),
      _createListTile(context, 'Bottom Navigation', new BottomNavigationDemo()),
      _createListTile(context, 'Buttons', new ButtonsDemo()),
      _createListTile(context, 'Cards', new CardsDemo()),
      _createListTile(context, 'Chips', new ChipDemo()),
      _createListTile(context, 'DataTable', new DataTableDemo()),
      _createListTile(context, 'Date and Time Picker', new DateAndTimePickerDemo()),
      _createListTile(context, 'Dialog', new DialogDemo()),
      _createListTile(context, 'Drawer', new DrawerDemo()),
      _createListTile(context, 'Expansion Panels', new ExpansionPanelsDemo()),
      _createListTile(context, 'Icons', new IconsDemo()),
      materialListsExpandTile,
      _createListTile(context, 'Menu', new MenuDemo()),
      _createListTile(context, 'Modal Bottom Sheet', new ModalBottomSheetDemo()),
      _createListTile(context, 'Page Selector Demo', new PageSelectorDemo()),
      _createListTile(context, 'Persistent Bottom Sheet', new PersistentBottomSheetDemo()),
      _createListTile(context, 'Progress Indicator', new ProgressIndicatorDemo()),
      _createListTile(context, 'Ripple', new Ripple()),
      _createListTile(context, 'Scrollable Tabs', new ScrollableTabsDemo()),
      _createListTile(context, 'Selection Controls', new SelectionControlsDemo()),
      _createListTile(context, 'Slider', new SliderDemo()),
      _createListTile(context, 'SnackBar', new SnackBarDemo()),
      _createListTile(context, 'Tabs', new TabsDemo()),
      _createListTile(context, 'TabBar', new TabBarSample()),
      _createListTile(context, 'Tabs Fab', new TabsFabDemo()),
      _createListTile(context, 'TextField', new VTextField()),
      _createListTile(context, 'Text Form Field', new TextFormFieldDemo()),
      _createListTile(context, 'Tooltip', new TooltipDemo()),

    ]);

    var iosExpandTile = _createExpansionTile(context, 'iOS Widgets', <Widget>[
      _createListTile(context, 'Progress Indicator', new CupertinoProgressIndicatorDemo()),
      _createListTile(context, 'Buttons', new CupertinoButtonsDemo()),
      _createListTile(context, 'Dialog', new CupertinoDialogDemo()),
      _createListTile(context, 'Navigation', new CupertinoNavigationDemo()),
      _createListTile(context, 'Picker', new CupertinoPickerDemo()),
      _createListTile(context, 'Slider', new CupertinoSliderDemo()),
      _createListTile(context, 'Switch', new CupertinoSwitchDemo()),
    ]);

    var animationsExpandTile = _createExpansionTile(context, 'Animations', <Widget>[
      _createListTile(context, 'Demo', new AnimationDemo()),
      _createListTile(context, 'Fade', new AnimationFade()),
    ]);

    var storageExpandTile=_createExpansionTile(context, 'Storage', <Widget>[
      _createListTile(context, 'File', new StorageFile(storage: new CounterStorage())),
      _createListTile(context, 'Key/Value', new StorageKeyValue()),
      ]);

    var imagesExpandTile=_createExpansionTile(context, 'Images', <Widget>[
      _createListTile(context, 'Images', new ImagesSample()),
      _createListTile(context, 'Images Cached', new ImagesCached()),
      _createListTile(context, 'Images Animated', new ImagesDemo()),
      _createListTile(context, 'Images Fading', new ImagesFading()),
      ]);

    var demosExpandTile=_createExpansionTile(context, 'Demos', <Widget>[
      _createListTile(context, 'Calculator', new CalculatorDemo()),
      _createListTile(context, 'Colors', new ColorsDemo()),
      _createListTile(context, 'Contact Detail', new ContactsDemo()),
      _createListTile(context, 'Custom Fonts', new CustomFontsSample()),
      _createListTile(context, 'Login', new Login()),
      _createListTile(context, 'Pesto Demo', new PestoDemo()),
      _createListTile(context, 'Shrine', new ShrineDemo()),
    ]);

    return new Scaffold(
      appBar: new AppBar(title: new Text(title)),
      body: new Center(child: new Text('My Page!')),
      drawer: new Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the Drawer if there isn't enough vertical
        // space to fit everything.
        child: new ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            new DrawerHeader(
              child: new Center(
                child: new Text(
                  'Flutter Samples',
                  style: new TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
              ),
              decoration: new BoxDecoration(
                color: const Color.fromRGBO(255, 149, 3, 1.0),
              ),
            ),
            materialExpandTile,
            iosExpandTile,
            animationsExpandTile,
            storageExpandTile,
            imagesExpandTile,
            demosExpandTile,
            _createListTile(context, 'Gesture Tap', new GestureTap()),
            _createListTile(context, 'Navigation Return Data', new NavigationReturnData()),
            _createListTile(context, 'Theme', new ThemeSample()),
            _createListTile(context, 'Typography', new TypographyDemo()),
            _createListTile(context, 'Video', new VideoDemo()),
          ],
        ),
      ),
    );
  }

  Widget _createListTile(BuildContext context, String title, dynamic route) {
    return new ListTile(
      title: new Text(title),
      onTap: () {
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => route),
        );
      },
    );
  }

  Widget _createExpansionTile(BuildContext context, String title, List<Widget> children) {
    return new ExpansionTile(
      title: new Text(title),
      backgroundColor: Theme.of(context).accentColor.withOpacity(0.025),
      children: children,
    );
  }
}
