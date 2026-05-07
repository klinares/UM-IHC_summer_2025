# UM-IHC Summer 2025: AI Integration in Survey & Health Measurement Research

![](images/clipboard-3187249507.png)

This repository documents work completed during my summer 2025 internship at the [**University of Maryland Institute for Health Computing (UM-IHC)**](https://www.umd.edu/research/uminstitute-health-computing) — a flagship initiative jointly led by UMD, the University of Maryland, Baltimore, and the University of Maryland Medical System to advance health computing in Montgomery County, Maryland.

The work centers on a single methodological question: **as large language models (LLMs) are integrated into survey instruments and patient-reported outcome measures (PROMs), what happens to measurement validity?**

------------------------------------------------------------------------

## Headline Output: DC-AAPOR Presentation (September 2025)

> **Cognitive Mind Meets the Artificial: How AI Reshapes Survey Research Through the Lens of Response Process Theory** *Presented at the DC-AAPOR Annual Conference, September 2025*

The talk applies **Tourangeau's (1984, 2000) cognitive response process framework** to evaluate the methodological consequences of LLM-integrated PROMs (LLM-PROMs). While recent work (e.g., Terheyden et al., 2025) highlights the practical promise of LLM-PROMs — adaptive language, real-time interpretation, personalized feedback — it largely overlooks how this integration may compromise the psychometric properties of the resulting data.

Tourangeau's framework decomposes survey response into four cognitive stages. The presentation walks through each in turn, identifying both the benefits LLM-PROMs offer and the validity threats they introduce:

| Stage | LLM-PROM Benefits | Validity Threats |
|------------------------|------------------------|------------------------|
| **Comprehension** | Adapts to individual health literacy in real time; clarifies medical terminology on demand | Sacrifices standardization across patients and time points; question framing reflects training-corpus norms rather than validated psychometric principles |
| **Retrieval** | Guides systematic symptom review; helps respondents sequence health events chronologically | LLM-generated probes may inadvertently suggest symptoms drawn from medical training data, leading respondents to affirm symptoms they have not experienced |
| **Judgment** | Reduces coder/clinician burden; rapidly processes complex narratives | Shifts judgment from respondent to algorithm — removing the respondent's agency to determine which aspects of their experience are most relevant |
| **Response** | Captures rich open-ended narrative; reduces cognitive burden of forced-choice formats | Conversational AI exchanges produce hybrid expressions reflecting both human experience and machine interpretation, complicating measurement equivalence |

**Bottom line:** LLM-PROMs can ease respondent burden and capture richer narratives, but their integration alters every cognitive stage of survey response in ways that challenge traditional measurement equivalence. Realizing the benefits of AI-enhanced health measurement requires rigorous theoretical development, careful empirical validation, and an unwavering commitment to measurement integrity.

📄 [View the presentation](./lit_reviews/LLM_social_sciences/DC-AAPOR%20presentation.pptx)

------------------------------------------------------------------------

## Literature Review

A companion literature review on AI in questionnaire research grounds the talk in the broader methodological literature:

📄 [`lit_review_AI_questionnaire_research.docx`](./lit_reviews/LLM_social_sciences/lit_review_AI_questionnaire_research.docx)

------------------------------------------------------------------------

## Repository Structure

```         
UM-IHC_summer_2025/
├── lit_reviews/
│   └── LLM_social_sciences/
│       ├── DC-AAPOR presentation.pptx
│       └── lit_review_AI_questionnaire_research.docx
└── README.md
```

------------------------------------------------------------------------

## Why This Work Matters

The integration of LLMs into survey research is moving faster than the methodological frameworks needed to evaluate it. This work argues that survey methodology has the conceptual tools required — Tourangeau's response-process model, the Total Survey Error framework, decades of measurement validity scholarship — and that applying them to LLM-PROMs is not optional. It is the work that has to happen if AI-enhanced measurement is going to be both useful and trustworthy.

------------------------------------------------------------------------

## Author

**Kevin Linares** Survey Methodologist · Data Scientist University of Maryland JPSM · University of Michigan Survey Research Center [github.com/klinares](https://github.com/klinares)
