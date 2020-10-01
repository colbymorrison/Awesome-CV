CC = xelatex
OUT_DIR = out
RESUME_DIR = resume
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')

resume.pdf: $(RESUME_DIR)/resume.tex $(RESUME_SRCS)
	$(CC) -output-directory=$(OUT_DIR) $<

clean:
	rm -rf $(OUT_DIR)/*
