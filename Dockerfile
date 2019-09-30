FROM nfcore/base
LABEL authors="Moraga / Galla / Hoeppner" \
      description="Docker image containing all requirements for nf-core/rescueseq pipeline"

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a
ENV PATH /opt/conda/envs/nf-core-rescueseq-1.0dev/bin:$PATH
