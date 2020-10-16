// ignore: avoid_web_libraries_in_flutter
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skin_ML/Homepage/DiseasesInfoPage.dart';

List<List<String>> dieses = [
  [
    //"Acne and Rosacea"
    "https://www.dermatologyadvisor.com/wp-content/uploads/sites/20/2019/03/Acne-rosacea-on-the-face_MI_01B76D0C-1024x682.jpg",
    "A condition that causes redness and often small, red, pusfilled bumps on the face.",
    "Key symptoms are facial redness with swollen red bumps and small visible blood vessels.",
    "Treatments such as antibiotics or anti-acne medication can control and reduce symptoms. Left untreated, it tends to worsen over time."
  ],
  [
    //"Actinic Keratosis Basal Cell Carcinoma and other Malignant Lesions"
    "https://www.researchgate.net/profile/Lyubomir_Dourmishev/publication/234081633/figure/fig1/AS:202527502016516@1425297727582/Nodular-basal-cell-carcinoma-at-the-left-zygomatic-area-in-an-86-years-old-woman.png",
    "A rough, scaly patch on the skin caused by years of sun exposure",
    "Actinic keratoses can present as a solitary lesion or as a larger, diffuse plaque. Solitary lesions often appear as an ill-defined, scaly, rough, red plaque that is approximately 3 to 6 mm in diameter. The lesions can be slightly sensitive to touch.",
    "Requires a medical diagnosis because it can become cancerous, it's usually removed as a precaution."
  ],
  [
    //"Atopic Dermatitis"
    "https://www.aaaai.org/Aaaai/media/MediaLibrary/Images/Conditions/Library/Eczemas.jpg",
    "An itchy inflammation of the skin",
    "The main symptom is a rash that typically appears on the arms and behind the knees, but can also appear anywhere.",
    "Treatment includes avoiding soap and other irritants. Certain creams or ointments may also provide relief from the itching."
  ],
  [
    //"Bullous Disease"
    "https://assets.nhs.uk/prod/images/S_0318_Bullous_pemphigoid_C0284421.width-1534.jpg",
    "Bullous pemphigoid (BUL-us PEM-fih-goid) is a rare skin condition that causes large, fluid-filled blisters. They develop on areas of skin that often flex — such as the lower abdomen, upper thighs or armpits.",
    "Itching skin, weeks or months before blisters form or Large blisters that don't easily rupture when touched, often along creases or folds in the skin.",
    "It may include corticosteroid medications, such as prednisone, and other drugs that suppress the immune system."
  ],
  [
    //"Cellulitis Impetigo and other Bacterial Infections" : {
    "https://nircastreatmentsystem.review/wp-content/uploads/2017/03/1490131712_maxresdefault-768x533.jpg",
    "A highly contagious skin infection that causes red sores on the face.",
    "The main symptom is red sores that form around the nose and mouth. The sores rupture, ooze for a few days, then form a yellow-brown crust.",
    "Antibiotics shorten the infection and can help prevent spread to others."
  ],
  [
    //"Eczema"
    "https://www.aaaai.org/Aaaai/media/MediaLibrary/Images/Conditions/Library/Eczemas.jpg",
    "An itchy inflammation of the skin.",
    "The main symptom is a rash that typically appears on the arms and behind the knees, but can also appear anywhere.",
    "Treatment includes avoiding soap and other irritants. Certain creams or ointments may also provide relief from the itching."
  ],
  [
    //"Exanthems and Drug Eruptions"
    "http://3.bp.blogspot.com/-8J2ygnjrWag/U04hpR3V_3I/AAAAAAAABso/urnZr5Bgo8M/s1600/65088.jpg",
    "A widely spread-out rash.",
    "A diffuse rash can have causes that aren't due to underlying disease. Examples include heat rash, insect bites, sunburn or medication side effects.",
    "Taking paracetamol may help to reduce fever and discomfort. Drinking fluids and getting plenty of rest may also help."
  ],
  [
    //"Hair Loss Photos Alopecia and other Hair Diseases"
    "https://www.abc.net.au/cm/rimage/9598580-16x9-xlarge.jpg?v=2",
    "Sudden hair loss that starts with one or more circular bald patches that may overlap.",
    "The main symptom is hair loss.",
    "Treatment may address any underlying conditions and includes topical scalp medication."
  ],
  [
    //"Herpes HPV and other STDs"
    "https://images.everydayhealth.com/images/stds/hpv/hpv-warts-722x406.jpg?w=1110",
    "Herpes results from infection with the herpes simplex virus(HSV).",
    "sores or blisters to form in or around the mouth or genitals, as well as other symptoms.",
    "Some people find that using ice packs help. Never apply ice directly to the skin — wrap it in a cloth first."
  ],
  [
    //"Light Diseases and Disorders of Pigmentation"
    "https://www.mayoclinic.org/-/media/kcms/gbs/patient-consumer/images/2013/08/26/10/35/ds00635_im02247_sn7_tineaversicolorthu_jpg.jpg",
    "A disease that causes loss of skin color in patches.",
    "Patchy loss of skin color, which usually first appears on the hands, face, and areas around body openings and the genitals.",
    "See your doctor if areas of your skin, hair or mucous membranes lose coloring."
  ],
  [
    //"Lupus and other Connective Tissue diseases"
    "https://stemcellstransplantinstitute.com/wp-content/uploads/elementor/thumbs/lupus-ok6c6kg9chxtxc0fhf4mfwnf1eukmywnahhrf1agq8.png",
    "An inflammatory disease caused when the immune system attacks its own tissues.",
    "Symptoms vary but can include fatigue, joint pain, rash and fever.",
    " While there's no cure for lupus, current treatments focus on improving quality of life through controlling symptoms and minimising flare-ups."
  ],
  [
    //"Melanoma Skin Cancer Nevi and Moles"
    "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Melanoma.jpg/450px-Melanoma.jpg",
    "Melanoma occurs when the pigment-producing cells that give colour to the skin become cancerous.",
    "Symptoms might include a new, unusual growth or a change in an existing mole. Melanomas can occur anywhere on the body.",
    "Treatment may involve surgery, radiation, medication or in some cases, chemotherapy."
  ],
  [
    //"Nail Fungus and other Nail Disease"
    "https://dermnetnz.org/assets/Uploads/fungal/bnail__ProtectWyJQcm90ZWN0Il0_FocusFillWzI5NCwyMjIsIngiLDFd.jpg",
    "A nail fungus causing thickened, brittle, crumbly or ragged nails.",
    "The main symptoms are changes in the appearance of nails. Rarely, the condition causes pain or a slightly foul odour.",
    "Treatments include oral anti-fungal drugs, medicated nail polish or cream or nail removal."
  ],
  [
    //"Poison Ivy Photos and other Contact Dermatitis"
    "https://1au3b422k9zdqzddw3my51gg-wpengine.netdna-ssl.com/wp-content/uploads/sites/7/2018/12/dermatitisns1_1031225.jpg",
    "Poison ivy rash is caused by an allergic reaction to an oily resin called urushiol (u-ROO-she-ol).",
    "Signs and symptoms of a poison ivy rash include : Redness, Itching, Swelling, Blisters, Difficulty breathing, if you've inhaled the smoke from burning poison ivy.",
    "See your doctor if: The reaction is severe or widespread, You inhaled the smoke from burning poison ivy and are having difficulty breathing."
  ],
  [
    //"Psoriasis pictures Lichen Planus and related diseases"
    "https://allaboutcare.org/wp-content/uploads/2020/04/plaque-psoriasis-870x570.jpg",
    "A condition in which skin cells build up and form scales and itchy, dry patches.",
    "The most common symptom is a rash on the skin, but sometimes the rash involves the nails or joints.",
    "Treatment aims to remove scales and stop skin cells from growing so quickly. Topical ointments, light therapy and medication can offer relief."
  ],
  [
    //"Scabies Lyme Disease and other Infestations and Bites"
    "https://images.medicinenet.com/images/slideshow/stds-s3-photo-of-scabies.jpg",
    "Lyme disease is caused by a bite from a black-legged tick.",
    "If you see a rash or another sign of Lyme disease on your skin, see your primary doctor right away.",
    "Seek medical care early to prevent Lyme disease from progressing."
  ],
  [
    //"Seborrheic Keratoses and other Benign Tumors"
    "https://www.aocd.org/resource/resmgr/ddb/seborrheic_keratoses_2_low.jpg",
    "A non-cancerous skin condition that appears as a waxy brown, black or tan growth.",
    "Seborrheic keratosis often appears on the face, chest, shoulders or back. It has a waxy, scaly, slightly elevated appearance.",
    "No treatment is necessary. If the seborrhoeic keratosis causes irritation, it can be removed by a doctor."
  ],
  [
    //"Systemic Disease"
    "https://www.clevelandclinicmeded.com/medicalpubs/diseasemanagement/dermatology/dermatologic-signs-of-systemic-disease/images/dermatologic-signs-fig4_thumb.jpg",
    "A systemic disease is a disease that affects other parts of the body, or even the whole body. The hands are complex.",
    "Swelling of the middle joint of a finger or Sometimes, small red dots will appear right around the nail cuticles.",
    "Topical cannabinoid agonist creams have been shown to relieve pruritus associated with certain chronic dermatoses."
  ],
  [
    //"Tinea Ringworm Candidiasis and other Fungal Infections"
    "https://ponirevo.com/wp-content/uploads/2020/04/ringworm-a-fungal-infection.jpg",
    "A highly contagious fungal infection of the skin or scalp.",
    "Ringworm is typically scaly and may be red and itchy. Ringworm of the scalp is common in children, where it may cause bald patches.",
    "The treatment for ringworm is antifungal medication."
  ],
  [
    //"Urticaria Hives"
    "https://www.babycenter.in/ims/2018/09/iStock-477066845_wide.jpg.pagespeed.ce.3KAhZTFePf.jpg",
    "A skin rash triggered by a reaction to food, medicine or other irritants.",
    "Symptoms include itchy, raised, red or skincoloured welts on the skin's surface.",
    "Hives usually go away without treatment, but anti-histamine medication is often helpful in improving symptoms."
  ],
  [
    //"Vascular Tumors"
    "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Hemangioma.JPG/450px-Hemangioma.JPG",
    "Vascular tumors may be benign (not cancer) or malignant (cancer) and can occur anywhere in the body.",
    "Loss of balance or coordination, Nausea or vomiting, Headache, Vision changes.",
    "Propranolol is also used to treat benign vascular tumor of liver and kaposiform hemangioendothelioma. Other beta-blockers used to treat vascular tumors include atenolol, nadolol, and timolol."
  ],
  [
    //"Vasculitis"
    "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Vasculitis.JPG/450px-Vasculitis.JPG",
    "An inflammation of the blood vessels that causes changes in the blood vessel walls.",
    "Symptoms include fever, fatigue, weight loss and muscle and joint pain.",
    "Some forms of vasculitis improve on their own. Others require medication."
  ],
  [
    //"Warts Molluscum and other Viral Infections"
    "https://images.emedicinehealth.com/images/image_collection/skin/molluscum_contagiosum.jpg",
    "A viral skin infection that results in round, firm, painless bumps.",
    "Though painless, the small bumps might itch. Scratched bumps can spread infection to surrounding skin.",
    "The bumps usually disappear on their own. In rare cases, the bumps can be removed using medication or other procedures."
  ]
];

class DiseasesList extends StatefulWidget {
  DiseasesList({Key key}) : super(key: key);

  @override
  _DiseasesListState createState() => _DiseasesListState();
}

class _DiseasesListState extends State<DiseasesList> {
  // ignore: non_constant_identifier_names
  // ignore: non_constant_identifier_names
  row_of_two_diseses_list(String _disesesName, int _index) {
    var _cardColor;
    if (_index % 3 == 0) {
      _cardColor = Color.fromRGBO(229, 184, 191, 1);
    } else if (_index % 3 == 1) {
      _cardColor = Color.fromRGBO(229, 233, 199, 1);
    } else {
      _cardColor = Color.fromRGBO(217, 221, 248, 1);
    }
    List<String> diseaseData = [
      _disesesName,
      dieses[_index][0],
      dieses[_index][1],
      dieses[_index][2],
      dieses[_index][3]
    ];
    return Card(
      child: InkWell(
        child: Container(
          padding: EdgeInsets.all(0),
          // height: 50.0,
          width: MediaQuery.of(this.context).size.width - 20,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                _disesesName,
                style: GoogleFonts.ptSans(
                  fontSize: 19,
                  color: Color.fromRGBO(14, 49, 80, 1),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          decoration: BoxDecoration(
              color: _cardColor,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 0)),
        ),
        onTap: () {
          Navigator.push(
            this.context,
            // ignore: missing_return
            MaterialPageRoute(
              builder: (context) => DiseasesInfoPage(),
              settings: RouteSettings(arguments: diseaseData),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Types Of Skin Diseases',
          style: GoogleFonts.robotoSlab(
              fontSize: 21, color: Colors.white, fontWeight: FontWeight.bold),
          textAlign: TextAlign.left,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            row_of_two_diseses_list("Acne and Rosacea", 0),
            row_of_two_diseses_list(
                "Actinic Keratosis Basal Cell Carcinoma and other Malignant Lesions",
                1),
            row_of_two_diseses_list("Atopic Dermatitis", 2),
            row_of_two_diseses_list("Bullous Disease", 3),
            row_of_two_diseses_list(
                "Cellulitis Impetigo and other Bacterial Infections", 4),
            row_of_two_diseses_list("Eczema", 5),
            row_of_two_diseses_list("Exanthems and Drug Eruptions", 6),
            row_of_two_diseses_list(
                "Hair Loss Photos Alopecia and other Hair Diseases", 7),
            row_of_two_diseses_list("Herpes HPV and other STDs", 8),
            row_of_two_diseses_list(
                "Light Diseases and Disorders of Pigmentation", 9),
            row_of_two_diseses_list(
                "Lupus and other Connective Tissue diseases", 10),
            row_of_two_diseses_list("Melanoma Skin Cancer Nevi and Moles", 11),
            row_of_two_diseses_list("Nail Fungus and other Nail Disease", 12),
            row_of_two_diseses_list(
                "Poison Ivy Photos and other Contact Dermatitis", 13),
            row_of_two_diseses_list(
                "Psoriasis pictures Lichen Planus and related diseases", 14),
            row_of_two_diseses_list(
                "Scabies Lyme Disease and other Infestations and Bites", 15),
            row_of_two_diseses_list(
                "Seborrheic Keratoses and other Benign Tumors", 16),
            row_of_two_diseses_list("Systemic Disease", 17),
            row_of_two_diseses_list(
                "Tinea Ringworm Candidiasis and other Fungal Infections", 18),
            row_of_two_diseses_list("Urticaria Hives", 19),
            row_of_two_diseses_list("Vascular Tumors", 20),
            row_of_two_diseses_list("Vasculitis Photos", 21),
            row_of_two_diseses_list(
                "Warts Molluscum and other Viral Infections", 22),
          ],
        ),
      ),
    );
  }
}
