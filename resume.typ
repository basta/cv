#set page(
  paper: "us-letter",
  margin: (x: 0.7in, y: 0.6in),
)
#set text(font: "New Computer Modern", size: 11pt)
#set par(justify: false, leading: 0.55em)
#show link: it => underline(text(fill: rgb("#1155cc"), it))

#let section(title) = {
  v(0.4em)
  text(weight: "bold", size: 12pt, upper(title))
  v(-0.6em)
  line(length: 100%, stroke: 0.6pt)
  v(-0.4em)
}

#let entry(l, r) = {
  grid(
    columns: (1fr, auto),
    align: (left, right),
    l, r,
  )
}

// ===== Header =====
#align(center)[
  #text(size: 22pt, weight: "bold")[Ondřej Baštař] \
  bastarondrej\@outlook.com #sym.diamond.stroked #h(0.2em) +420 605 083 960 #sym.diamond.stroked #h(0.2em) Prague
]

#section[Work Experience]

#entry[*Vrgineers*  #h(0.5em) _Mixed Reality researcher/developer_][*2023 -- Present*]
- Lead developer on the mixed reality pipeline for the XTAL/somnium VR1 headset
- Development of a real-time c++/cuda image processing pipeline which handles 5000x5000\@102fps images through stages (demosaicking, denoise, sharpening, distortion, ...).
- Research work in optimizing the various image processing stages e.g. improving the denoiser from being a major performance hit to being negligible at the same qualitative performance, via low-level cuda optimizations

#entry[*FEE CTU*  #h(0.5em) _Teaching Assistant_][*2025 - Present*]
- I teach tutorials for first-year Linear Algebra for the open informatics students.

#entry[*AI Center (FEE CTU)*  #h(0.5em) _NLP Researcher_][*2022 -- 2023*]
- University research internship. I focused on sentence-to-sentence similarity and building datasets
- Built a sentence similarity dataset leveraging cross-source news coverage of the same events to generate naturally similar sentence pairs.

#entry[*COMTES FHT*  #h(0.5em) _Engineer_][*2020 -- 2022*]
- I developed solutions to increase productivity and efficiency of researchers:
  - Software and hardware for a prototype of an affordable metal 3D printer (modified Průša printer)
  - IoT monitoring solution for industrial machinery based on Arduino and Raspberry PIs.
  - GUI program for training and using neural networks to analyze images in Imgui and Python

#entry[*Whitesoft*  #h(0.5em) _Freelance IoT Engineer_][*Summer 2020*]
- Developed a smart public announcement system for a retirement home.
  - Backend in flask with a website in Vue.js.
  - Custom modular solution for Raspberry PIs built in Python.

#section[Education]

#entry[*Czech Technical University in Prague*][*2022 -- Present*]
#entry[Faculty of Electrical Engineering - Cybernetics and Robotics][_Prague_]
_Extra courses: Functional analysis, 4 semesters of phd theoretical physics. RTOS programming. Various advanced control algorithms._ \
*Thesis* (bachelor): Using magnetohydrodynamics (MHD) to improve cooling properties of a conductive liquid. \
_Supervisor: Ing. Jiří Zemnáek, Ph. D._
- Development of a custom MHD solver for the OpenFOAM system.
- Real Time MPC control using the simulations and surrogate models.
- Building the hardware for verifying control/simulation using existing solenoid boards from previous work of a researcher at the university.

#section[Competitions]

*1st place in #link("https://feedit.cz/2023/04/06/nevidomi-pomoci-jednoduche-aplikace-s-prvky-umele-inteligence-poznaji-jakou-barvu-ma-tricko-ci-jakou-prichut-ma-jogurt-ktery-si-berou-z-regalu/")[Microsoft AI accessibility hackathon] (AiAiEyes)*
- \~15 teams both industry and students
- We developed the application AiAiEyes, unique visual aid for vision-impaired (see Extracurricular)

*1st place in international Vrgineers Inc. Algorithm design competition (#link("https://fel.cvut.cz/en/what-s-on/news/33146-student-fee-ctu-ondrej-bastar-programmed-an-algorithm-for-training-pilots-in-augmented-reality-he-won-100-thousand-cze-in-the-competition")[university news report link])*
- Implemented image processing algorithms for real-time stereo 4k stream using compute shaders and CUDA, achieving processing in a few milliseconds on an RTX 2080
- Competed against ~25 international competitors

*1st place in national Porsche Engineering Student competition* (10-15 student teams)
- Built a racing algorithm achieving the fastest lap around a racetrack in the CARLA simulation, taking camera stream as input and outputting throttle and steering

*1st place in the national #link("https://kyr.fel.cvut.cz/vyhra-studentu-kyr-na-lifmat-ai-healthcare-hackathon-2023")[LIFMAT AI 2024 hackathon] (AI in healthcare)*
- 20 teams both students and industry
- Developed a solution for digitalizing and summarizing medical reports, because in Czechia they still exist only on paper.

*1st place in the national round of EuroTeQaThon* (15 student teams from Czechia)
- Audio processing solution for detecting malfunctions in Asahi breweries in Czechia. We used a mix of a hardware IoT solution and audio/signal processing (with vector embeddings) which would detect anomalous sounds in a plant, detecting mechanical failure early.

#section[Extracurricular]

*TePrVe (Technical evening of presentations #link("http://teprve.org")[teprve.org], #link("https://fel.cvut.cz/en/what-s-on/news/83396-teprve-discussion-evening-connects-students-with-projects-in-the-fields-of-ai-software-and-robotics")[press release]) (czech version only)*
- Started this student event, where we meet up (currently about 40 attendees) and give each other lectures/talks about our technical projects or stuff that interests us.

*AiAiEyes*
- AI based visual aid application for visually-impaired people. In development with #link("https://www.sons.cz/")[SONS] (czech association of the visually impaired).
- Enables users to locally (on smartphones) scan their objects and create a database of things. They can then use this database to recognize items from each other. For example T-Shirt with differing colors or grocery labels.

*Talks*
- *How to backpropagate through fluids*: (TePrVe čtvrtý: #link("https://www.youtube.com/watch?v=ciG_pWZ99KI")[link] in czech) a talk on differentiable fluid sims in nvidia-warp
- *CUDY z nudy:* (TePrVe první: #link("https://teprve.org/past-events")[link] in czech) introductory talk on cuda, but the pun doesn't work in english
- *How to get study notes from slides?:* (on 4.3.2026, no link yet) a project for using an agentic LLM harness to convert sparse slides into fluid and well readable notes.
- *LectureRAG:* (AI Tinkerers: #link("https://prague.aitinkerers.org/talks/rsvp_IJfc86TUlqg")[link]): A *talk on* creating a knowledge base from lecture recordings
- *Pinakes:* (AI Tinkerers: #link("https://prague.aitinkerers.org/talks/rsvp_w6H")[link]): Experimental tool for evaluating how well can agents keep notes organized

#section[Skills & Interests]

- *Skills:* Python, Javascript, C, SQL, PyTorch, Linux, AWS, 3D printing, GPU Programming
- *Interests:* 3D printing, Stock Trading, Linux, Experimenting with LLMs, Futurama
- *Languages:* Czech, fluent English
