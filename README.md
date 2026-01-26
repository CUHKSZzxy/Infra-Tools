# Useful AI Infra Scripts

## Folder Structures

```
Infra-Tools/
├── data/               # Data files
├── llm/                # LLM scripts
├── misc/               # Other tools
├── mllm/               # Multi-modal LLM scripts
├── .pre-commit-config.yaml  # Pre-commit setup
├── .pylintrc           # Python linting rules
└── README.md           # Project guide
```

## Pre-commit

```
pip install -U pre-commit
pre-commit install
pre-commit run --all-files
```
