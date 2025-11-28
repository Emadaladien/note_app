import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/widgets/add_note_form.dart';

// class AddNoteBottomSheet extends StatelessWidget {
//   const AddNoteBottomSheet({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => AddNoteCubit(),
//       child: Container(
//         decoration: BoxDecoration(
//           // borderRadius: BorderRadius.circular(8),
//           color: Colors.black12,
//         ),
//         child: BlocListener<AddNoteCubit, AddNoteState>(
//           listener: (context, state) {
//             if (state is AddNoteSuccess) {
//               Navigator.pop(context);
//             } else if (state is AddNoteFailer) {
//               print('Failed: ${state.errMessage}');
//             }
//           },
//           child: SingleChildScrollView(child: AddNoteForm()),
//         ),
//       ),
//     );
//   }
// }

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.black12),
      child: BlocProvider(
        create: (context) => AddNoteCubit(),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteSuccess) {
              Navigator.pop(context);
            } else if (state is AddNoteFailer) {
              print('Failed: ${state.errMessage}');
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddNoteLoading ? true : false,
              child: const SingleChildScrollView(child: AddNoteForm()),
            );
          },
        ),
      ),
    );
  }
}
