class LotofacilResponseDto {
  bool? acumulado;
  String? dataApuracao;
  String? dataProximoConcurso;
  List<String>? dezenasSorteadasOrdemSorteio;
  bool? exibirDetalhamentoPorCidade;
  num? id;
  num? indicadorConcursoEspecial;
  List<String>? listaDezenas;
  num? listaDezenasSegundoSorteio;
  List<ListaMunicipioUFGanhadores>? listaMunicipioUFGanhadores;
  List<ListaRateioPremio>? listaRateioPremio;
  num? listaResultadoEquipeEsportiva;
  String? localSorteio;
  String? nomeMunicipioUFSorteio;
  String? nomeTimeCoracaoMesSorte;
  num? numero;
  num? numeroConcursoAnterior;
  num? numeroConcursoFinal05;
  num? numeroConcursoProximo;
  num? numeroJogo;
  String? observacao;
  Null? premiacaoContingencia;
  String? tipoJogo;
  num? tipoPublicacao;
  bool? ultimoConcurso;
  num? valorArrecadado;
  num? valorAcumuladoConcurso05;
  double? valorAcumuladoConcursoEspecial;
  num? valorAcumuladoProximoConcurso;
  num? valorEstimadoProximoConcurso;
  num? valorSaldoReservaGarantidora;
  num? valorTotalPremioFaixaUm;

  LotofacilResponseDto(
      {this.acumulado,
      this.dataApuracao,
      this.dataProximoConcurso,
      this.dezenasSorteadasOrdemSorteio,
      this.exibirDetalhamentoPorCidade,
      this.id,
      this.indicadorConcursoEspecial,
      this.listaDezenas,
      this.listaDezenasSegundoSorteio,
      this.listaMunicipioUFGanhadores,
      this.listaRateioPremio,
      this.listaResultadoEquipeEsportiva,
      this.localSorteio,
      this.nomeMunicipioUFSorteio,
      this.nomeTimeCoracaoMesSorte,
      this.numero,
      this.numeroConcursoAnterior,
      this.numeroConcursoFinal05,
      this.numeroConcursoProximo,
      this.numeroJogo,
      this.observacao,
      this.premiacaoContingencia,
      this.tipoJogo,
      this.tipoPublicacao,
      this.ultimoConcurso,
      this.valorArrecadado,
      this.valorAcumuladoConcurso05,
      this.valorAcumuladoConcursoEspecial,
      this.valorAcumuladoProximoConcurso,
      this.valorEstimadoProximoConcurso,
      this.valorSaldoReservaGarantidora,
      this.valorTotalPremioFaixaUm});

  LotofacilResponseDto.fromJson(Map<String, dynamic> json) {
    acumulado = json['acumulado'];
    dataApuracao = json['dataApuracao'];
    dataProximoConcurso = json['dataProximoConcurso'];
    dezenasSorteadasOrdemSorteio =
        json['dezenasSorteadasOrdemSorteio'].cast<String>();
    exibirDetalhamentoPorCidade = json['exibirDetalhamentoPorCidade'];
    id = json['id'];
    indicadorConcursoEspecial = json['indicadorConcursoEspecial'];
    listaDezenas = json['listaDezenas'].cast<String>();
    listaDezenasSegundoSorteio = json['listaDezenasSegundoSorteio'];
    if (json['listaMunicipioUFGanhadores'] != null) {
      listaMunicipioUFGanhadores = <ListaMunicipioUFGanhadores>[];
      json['listaMunicipioUFGanhadores'].forEach((v) {
        listaMunicipioUFGanhadores!
            .add(new ListaMunicipioUFGanhadores.fromJson(v));
      });
    }
    if (json['listaRateioPremio'] != null) {
      listaRateioPremio = <ListaRateioPremio>[];
      json['listaRateioPremio'].forEach((v) {
        listaRateioPremio!.add(new ListaRateioPremio.fromJson(v));
      });
    }
    listaResultadoEquipeEsportiva = json['listaResultadoEquipeEsportiva'];
    localSorteio = json['localSorteio'];
    nomeMunicipioUFSorteio = json['nomeMunicipioUFSorteio'];
    nomeTimeCoracaoMesSorte = json['nomeTimeCoracaoMesSorte'];
    numero = json['numero'];
    numeroConcursoAnterior = json['numeroConcursoAnterior'];
    numeroConcursoFinal05 = json['numeroConcursoFinal_0_5'];
    numeroConcursoProximo = json['numeroConcursoProximo'];
    numeroJogo = json['numeroJogo'];
    observacao = json['observacao'];
    premiacaoContingencia = json['premiacaoContingencia'];
    tipoJogo = json['tipoJogo'];
    tipoPublicacao = json['tipoPublicacao'];
    ultimoConcurso = json['ultimoConcurso'];
    valorArrecadado = json['valorArrecadado'];
    valorAcumuladoConcurso05 = json['valorAcumuladoConcurso_0_5'];
    valorAcumuladoConcursoEspecial = json['valorAcumuladoConcursoEspecial'];
    valorAcumuladoProximoConcurso = json['valorAcumuladoProximoConcurso'];
    valorEstimadoProximoConcurso = json['valorEstimadoProximoConcurso'];
    valorSaldoReservaGarantidora = json['valorSaldoReservaGarantidora'];
    valorTotalPremioFaixaUm = json['valorTotalPremioFaixaUm'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['acumulado'] = this.acumulado;
    data['dataApuracao'] = this.dataApuracao;
    data['dataProximoConcurso'] = this.dataProximoConcurso;
    data['dezenasSorteadasOrdemSorteio'] = this.dezenasSorteadasOrdemSorteio;
    data['exibirDetalhamentoPorCidade'] = this.exibirDetalhamentoPorCidade;
    data['id'] = this.id;
    data['indicadorConcursoEspecial'] = this.indicadorConcursoEspecial;
    data['listaDezenas'] = this.listaDezenas;
    data['listaDezenasSegundoSorteio'] = this.listaDezenasSegundoSorteio;
    if (this.listaMunicipioUFGanhadores != null) {
      data['listaMunicipioUFGanhadores'] =
          this.listaMunicipioUFGanhadores!.map((v) => v.toJson()).toList();
    }
    if (this.listaRateioPremio != null) {
      data['listaRateioPremio'] =
          this.listaRateioPremio!.map((v) => v.toJson()).toList();
    }
    data['listaResultadoEquipeEsportiva'] = this.listaResultadoEquipeEsportiva;
    data['localSorteio'] = this.localSorteio;
    data['nomeMunicipioUFSorteio'] = this.nomeMunicipioUFSorteio;
    data['nomeTimeCoracaoMesSorte'] = this.nomeTimeCoracaoMesSorte;
    data['numero'] = this.numero;
    data['numeroConcursoAnterior'] = this.numeroConcursoAnterior;
    data['numeroConcursoFinal_0_5'] = this.numeroConcursoFinal05;
    data['numeroConcursoProximo'] = this.numeroConcursoProximo;
    data['numeroJogo'] = this.numeroJogo;
    data['observacao'] = this.observacao;
    data['premiacaoContingencia'] = this.premiacaoContingencia;
    data['tipoJogo'] = this.tipoJogo;
    data['tipoPublicacao'] = this.tipoPublicacao;
    data['ultimoConcurso'] = this.ultimoConcurso;
    data['valorArrecadado'] = this.valorArrecadado;
    data['valorAcumuladoConcurso_0_5'] = this.valorAcumuladoConcurso05;
    data['valorAcumuladoConcursoEspecial'] =
        this.valorAcumuladoConcursoEspecial;
    data['valorAcumuladoProximoConcurso'] = this.valorAcumuladoProximoConcurso;
    data['valorEstimadoProximoConcurso'] = this.valorEstimadoProximoConcurso;
    data['valorSaldoReservaGarantidora'] = this.valorSaldoReservaGarantidora;
    data['valorTotalPremioFaixaUm'] = this.valorTotalPremioFaixaUm;
    return data;
  }
}

class ListaMunicipioUFGanhadores {
  num? ganhadores;
  String? municipio;
  String? nomeFatansiaUL;
  num? posicao;
  String? serie;
  String? uf;

  ListaMunicipioUFGanhadores(
      {this.ganhadores,
      this.municipio,
      this.nomeFatansiaUL,
      this.posicao,
      this.serie,
      this.uf});

  ListaMunicipioUFGanhadores.fromJson(Map<String, dynamic> json) {
    ganhadores = json['ganhadores'];
    municipio = json['municipio'];
    nomeFatansiaUL = json['nomeFatansiaUL'];
    posicao = json['posicao'];
    serie = json['serie'];
    uf = json['uf'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ganhadores'] = this.ganhadores;
    data['municipio'] = this.municipio;
    data['nomeFatansiaUL'] = this.nomeFatansiaUL;
    data['posicao'] = this.posicao;
    data['serie'] = this.serie;
    data['uf'] = this.uf;
    return data;
  }
}

class ListaRateioPremio {
  String? descricaoFaixa;
  num? faixa;
  num? numeroDeGanhadores;
  double? valorPremio;

  ListaRateioPremio(
      {this.descricaoFaixa,
      this.faixa,
      this.numeroDeGanhadores,
      this.valorPremio});

  ListaRateioPremio.fromJson(Map<String, dynamic> json) {
    descricaoFaixa = json['descricaoFaixa'];
    faixa = json['faixa'];
    numeroDeGanhadores = json['numeroDeGanhadores'];
    valorPremio = json['valorPremio'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['descricaoFaixa'] = this.descricaoFaixa;
    data['faixa'] = this.faixa;
    data['numeroDeGanhadores'] = this.numeroDeGanhadores;
    data['valorPremio'] = this.valorPremio;
    return data;
  }
}
