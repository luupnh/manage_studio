import 'package:flutter/material.dart';
import 'package:manage_studio/resources/app_icon.dart';
import 'package:manage_studio/resources/app_string.dart';
import 'package:manage_studio/resources/colors.dart';
import 'package:manage_studio/utils/app_textfield_input_form.dart';

class EditCustomer extends StatefulWidget {
  const EditCustomer({Key? key}) : super(key: key);

  @override
  State<EditCustomer> createState() => _EditCustomerState();
}

class _EditCustomerState extends State<EditCustomer> {
  TextEditingController idCustomerController = TextEditingController();
  TextEditingController nameCustomerController = TextEditingController();
  TextEditingController phoneCustomerController = TextEditingController();
  TextEditingController addressCustomerController = TextEditingController();
  TextEditingController mailCustomerController = TextEditingController();

  @override
  void dispose() {
    idCustomerController.dispose();
    idCustomerController.dispose();
    phoneCustomerController.dispose();
    addressCustomerController.dispose();
    mailCustomerController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.shadowColor,
      appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
        title: Text(AppStrings.titleAppBarEditCustomer, style: TextStyle(
            decoration: TextDecoration.none,
            fontFamily: 'AvoNormal',
            fontSize: 16,
            color: AppColors.textColorsWhite,
            overflow: TextOverflow.clip)),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: AppIcon.iSave
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0)
              ),
              child: AppTextField(
                textEditingController: idCustomerController,
                hintText: "Mã khách hàng",
              ),
            )
          ],
        ),
      ),
    );
  }
}
