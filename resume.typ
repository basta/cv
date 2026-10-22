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
  bastarondrej\@outlook.com #sym.diamond.stroked #h(0.2em) +420 605 083 960 #sym.diamond.stroked #h(0.2em) Prague \
  #link("https://github.com/basta")[github.com/basta] #sym.diamond.stroked #h(0.2em) #link("https://www.linkedin.com/in/ond%C5%99ej-ba%C5%A1ta%C5%99-3416a423b")[LinkedIn]
]

#section[Research Experience]

#entry[*SPAR* (Supervised Program for Alignment Research) #h(0.5em) _Research Fellow_][*Sep 2026 -- Present*]
- _Coherence-preserving steering via learned activation denoisers_, mentored by Francisco Ferreira da Silva (Pivotal Research). Replicating GLP (Luo et al., ICML 2026), a diffusion model of LLM activations used as an on-manifold steering prior, on Llama-3.2-1B.
- Developing a Cold Diffusion variant that replaces Gaussian noise with deterministic degradation along collected steering directions.

#entry[*FEE CTU* #h(0.5em) _Researcher, Bayesian Inverse Reinforcement Learning_][*2025 -- Present*]
- With Ondřej Bajgar, developing QVIRL / ValueWalk, a Bayesian method that infers what an agent is trying to achieve, with uncertainty, from demonstrations of its behaviour.
- The method works on small discrete toy problems; scaling it up to high-dimensional continuous control, such as simulated robot locomotion (MuJoCo).

#entry[*AI Center (FEE CTU)*  #h(0.5em) _NLP Research Intern_][*2022 -- 2023*]
- Sentence-to-sentence similarity: built a dataset that mines naturally similar sentence pairs from cross-source news coverage of the same events.
- Experimented with transformer language models of the time (BERT and its variants) for sentence-similarity tasks.

#section[Work Experience]

#entry[*Vrgineers*  #h(0.5em) _Mixed Reality Researcher / Developer_][*2023 -- Present*]
- Lead developer on the mixed reality pipeline for the XTAL / Somnium VR1 headsets.
- Built a real-time C++/CUDA image processing pipeline for 5000×5000 \@ 102 fps video (demosaicking, denoising, sharpening, distortion correction, ...).
- Optimised the pipeline stages with low-level CUDA work, e.g. making the denoiser's cost negligible at unchanged quality.

#entry[*FEE CTU*  #h(0.5em) _Teaching Assistant_][*2025 -- Present*]
- First-year Linear Algebra tutorials for Open Informatics students, a role usually held by mathematics PhD students.

#entry[*COMTES FHT*  #h(0.5em) _Engineer_][*2020 -- 2022*]
- Prototype metal 3D printer, IoT machine monitoring, and an ImGui/Python tool for training image-analysis networks.

#entry[*Whitesoft*  #h(0.5em) _Freelance IoT Engineer_][*Summer 2020*]
- Smart announcement system for a retirement home (Flask + Vue.js, Raspberry Pi devices).

#section[Education]

#entry[*Czech Technical University in Prague*][*2022 -- 2027 (expected)*]
#entry[Faculty of Electrical Engineering, Cybernetics and Robotics (Bc., MSc)][_Prague_]
_Extra courses: functional analysis, 4 semesters of PhD theoretical physics, RTOS, advanced control._ \
*Thesis* (master's, in progress, supervisor Ondřej Bajgar): based on the Bayesian IRL research above. \
*Thesis* (bachelor's, supervisor Ing. Jiří Zemánek, Ph.D.): Magnetohydrodynamic (MHD) cooling of a conductive liquid.
- Custom MHD solver in OpenFOAM, real-time MPC with surrogate models, and verification hardware.

#section[Competitions]

- *1st, #link("https://fel.cvut.cz/en/what-s-on/news/33146-student-fee-ctu-ondrej-bastar-programmed-an-algorithm-for-training-pilots-in-augmented-reality-he-won-100-thousand-cze-in-the-competition")[Vrgineers Algorithm Design Competition]* (international, \~25 entrants): real-time stereo 4K image processing in CUDA.
- *1st, #link("https://feedit.cz/2023/04/06/nevidomi-pomoci-jednoduche-aplikace-s-prvky-umele-inteligence-poznaji-jakou-barvu-ma-tricko-ci-jakou-prichut-ma-jogurt-ktery-si-berou-z-regalu/")[Microsoft AI Accessibility Hackathon]* (\~15 teams): AiAiEyes, an on-device visual aid for the visually impaired, later developed with #link("https://www.sons.cz/")[SONS].
- *1st, Porsche Engineering Student Competition* (national): vision-to-control racing agent with the fastest lap in CARLA.
- *1st, #link("https://kyr.fel.cvut.cz/vyhra-studentu-kyr-na-lifmat-ai-healthcare-hackathon-2023")[LIFMAT AI healthcare hackathon]* (20 teams): digitising and summarising paper medical reports.
- *1st, EuroTeQaThon national round* (15 teams): audio-embedding anomaly detection for brewery machinery.

#section[Extracurricular]

*TePrVe* (Technical evening of presentations, #link("http://teprve.org")[teprve.org], #link("https://fel.cvut.cz/en/what-s-on/news/83396-teprve-discussion-evening-connects-students-with-projects-in-the-fields-of-ai-software-and-robotics")[press release], Czech only)
- Founded a student meetup (\~50 regular attendees) where students give each other talks on their technical projects.

*Rakathon 2026* (#link("https://rakathon.cz")[rakathon.cz]) _Main Organiser, Prague_
- National AI-against-cancer hackathon in Prague, Brno and Ostrava: 500+ participants, 24 challenges from hospital oncology practice.

*Talks*
- *How to backpropagate through fluids*: (TePrVe čtvrtý: #link("https://www.youtube.com/watch?v=ciG_pWZ99KI")[video], in Czech) a talk on differentiable fluid sims in NVIDIA Warp
- *CUDY z nudy:* (TePrVe první: #link("https://teprve.org/past-events")[link], in Czech) introductory talk on CUDA, but the pun doesn't work in English
- *How to get study notes from slides?* (March 2026) a project for using an agentic LLM harness to convert sparse slides into fluid and well readable notes.
- *LectureRAG:* (AI Tinkerers, #link("https://prague.aitinkerers.org/talks/rsvp_IJfc86TUlqg")[link]): a talk on creating a knowledge base from lecture recordings
- *Pinakes:* (AI Tinkerers, #link("https://prague.aitinkerers.org/talks/rsvp_w6H")[link]): an experimental tool for evaluating how well agents keep notes organised

#section[Skills & Languages]
- Python, PyTorch, C++/CUDA, NVIDIA Warp, MuJoCo, ROS2, Linux #h(1fr) Czech, English (fluent)
