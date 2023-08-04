// import 'package:eveb/theme/app_colors.dart';
// import 'package:eveb/widgets/app_text.dart';
// import 'package:eveb/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class SetUpAccount extends StatefulWidget {
  const SetUpAccount({super.key});

  static String id = 'bla bla bla';

  @override
  State<SetUpAccount> createState() => _SetUpAccountState();
}

class _SetUpAccountState extends State<SetUpAccount> {
  String selectedValue = 'Gender'; // Initial value for the dropdown

  // List of options for the dropdown
  List<String> dropdownItems = [
    'Gender',
    'Male',
    'Female',
    'Other',
  ];
  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
          //  color: AppColors.colorblack,
          ),
      borderRadius: BorderRadius.all(
        Radius.circular(8),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 45,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Row(
          children: [
            Stack(
              children: [
                const CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.yellow,
                  child: Text(
                    "JD",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 30,
                  child: InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.edit,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(width: 10),
            const Text(
              "John Doe",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
        child: Column(
          children: [
            const SetUpAccountWidget(
              icon: Icons.email,
              decoration: InputDecoration(
                hintText: "jdjoe@gmail.com",
                contentPadding: EdgeInsets.only(left: 10),
              ),
            ),
            const SizedBox(height: 10),
            const SetUpAccountWidget(
              icon: Icons.phone,
              decoration: InputDecoration(
                hintText: "+1 256 852256554",
                contentPadding: EdgeInsets.only(left: 10),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(
                  Icons.transgender,
                  color: Colors.black,
                ),
                const SizedBox(width: 10),
                // Assuming dropdownItems is a non-empty list
                // This Container widget is used to wrap the DropdownButton, setting its appearance and dimensions.

                Container(
                  // The width of the Container is set to 200, making the DropdownButton 200 pixels wide.
                  width: 200,

                  // Padding is set to zero, removing any internal spacing within the Container.
                  padding: EdgeInsets.zero,

                  // The BoxDecoration is used to apply a border and rounded corners to the Container.
                  decoration: BoxDecoration(
                    // A border is applied around the Container with the specified color (Colors.grey).
                    border: Border.all(color: Colors.grey),

                    // The BorderRadius.circular() method is used to create rounded corners with a radius of 10 pixels.
                    borderRadius: BorderRadius.circular(10),
                  ),

                  // The DropdownButtonHideUnderline widget is used to hide the default underline of the DropdownButton.
                  child: DropdownButtonHideUnderline(
                    // The DropdownButton widget is used to create a dropdown button with options.
                    child: DropdownButton<String>(
                      // The isExpanded property is set to true, making the dropdown button take the full available width.
                      isExpanded: true,

                      // The value property holds the currently selected option in the dropdown.
                      value: selectedValue,

                      // The onChanged property is a callback function that is triggered when a new option is selected.
                      onChanged: (String? newValue) {
                        // Check if the newly selected value is not null.
                        if (newValue != null) {
                          // If the new value is not null, update the selectedValue and trigger a rebuild using setState().
                          setState(() {
                            selectedValue = newValue;
                          });
                        }
                      },

                      // The items property holds the list of dropdown options to be displayed.
                      // The dropdownItems list contains the available options.
                      items: dropdownItems.map((String item) {
                        // The DropdownMenuItem widget is used to create a single dropdown option.
                        return DropdownMenuItem<String>(
                          // The value property of DropdownMenuItem holds the value of the option.
                          value: item,

                          // The child property holds the widget to be displayed as the option.
                          child: Row(
                            // The Row widget is used to place the text and icon horizontally in the dropdown option.
                            children: [
                              Expanded(
                                // The Expanded widget is used to make the Text widget take the available space.
                                child: Padding(
                                  // The EdgeInsets.only() method is used to add padding only on the left side.
                                  padding: const EdgeInsets.only(left: 8),

                                  // The Text widget displays the text of the dropdown option.
                                  child: Text(item),
                                ),
                              ),

                              // The VerticalDivider widget is used to create a vertical line (divider).
                              const VerticalDivider(
                                // The thickness property sets the width of the divider to 1 pixel.
                                thickness: 1,

                                // The color property sets the color of the divider to black.
                                color: Colors.black,
                              ),

                              // The SizedBox widget is used to create empty space between the text and icon.
                              const SizedBox(width: 8),
                            ],
                          ),
                        );
                      }).toList(),

                      // The style property holds the text style for the selected option in the dropdown.
                      // Here, we set the text color to black and the font size to 16 pixels.
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),

                      // The icon property is set to null to remove the default dropdown icon.
                      icon: null,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 15),
            const SetUpAccountWidget(
              icon: Icons.error,
              maxLines: 5,
              decoration: InputDecoration(
                hintText:
                    "Goal getter, chasing the trophies, gifts, ranks and tokens",
                contentPadding: EdgeInsets.only(left: 10, top: 5),
                border: border,
                enabledBorder: border,
                focusedBorder: border,
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: const BottomNavBar(),
    );
  }
}

class SetUpAccountWidget extends StatelessWidget {
  final IconData icon;
  final int maxLines;
  final InputDecoration decoration;
  final EdgeInsets? contentPadding;
  const SetUpAccountWidget({
    super.key,
    required this.icon,
    this.maxLines = 1,
    this.decoration = const InputDecoration(),
    this.contentPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.black,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: TextField(
            maxLines: maxLines,
            decoration: decoration,
          ),
        ),
      ],
    );
  }
}
