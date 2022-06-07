class LoteriaResponseDto {
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
  dynamic premiacaoContingencia;
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

  LoteriaResponseDto(
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

  LoteriaResponseDto.fromJson(Map<String, dynamic> json) {
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
        listaMunicipioUFGanhadores!.add(ListaMunicipioUFGanhadores.fromJson(v));
      });
    }
    if (json['listaRateioPremio'] != null) {
      listaRateioPremio = <ListaRateioPremio>[];
      json['listaRateioPremio'].forEach((v) {
        listaRateioPremio!.add(ListaRateioPremio.fromJson(v));
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['acumulado'] = acumulado;
    data['dataApuracao'] = dataApuracao;
    data['dataProximoConcurso'] = dataProximoConcurso;
    data['dezenasSorteadasOrdemSorteio'] = dezenasSorteadasOrdemSorteio;
    data['exibirDetalhamentoPorCidade'] = exibirDetalhamentoPorCidade;
    data['id'] = id;
    data['indicadorConcursoEspecial'] = indicadorConcursoEspecial;
    data['listaDezenas'] = listaDezenas;
    data['listaDezenasSegundoSorteio'] = listaDezenasSegundoSorteio;
    if (listaMunicipioUFGanhadores != null) {
      data['listaMunicipioUFGanhadores'] =
          listaMunicipioUFGanhadores!.map((v) => v.toJson()).toList();
    }
    if (listaRateioPremio != null) {
      data['listaRateioPremio'] =
          listaRateioPremio!.map((v) => v.toJson()).toList();
    }
    data['listaResultadoEquipeEsportiva'] = listaResultadoEquipeEsportiva;
    data['localSorteio'] = localSorteio;
    data['nomeMunicipioUFSorteio'] = nomeMunicipioUFSorteio;
    data['nomeTimeCoracaoMesSorte'] = nomeTimeCoracaoMesSorte;
    data['numero'] = numero;
    data['numeroConcursoAnterior'] = numeroConcursoAnterior;
    data['numeroConcursoFinal_0_5'] = numeroConcursoFinal05;
    data['numeroConcursoProximo'] = numeroConcursoProximo;
    data['numeroJogo'] = numeroJogo;
    data['observacao'] = observacao;
    data['premiacaoContingencia'] = premiacaoContingencia;
    data['tipoJogo'] = tipoJogo;
    data['tipoPublicacao'] = tipoPublicacao;
    data['ultimoConcurso'] = ultimoConcurso;
    data['valorArrecadado'] = valorArrecadado;
    data['valorAcumuladoConcurso_0_5'] = valorAcumuladoConcurso05;
    data['valorAcumuladoConcursoEspecial'] = valorAcumuladoConcursoEspecial;
    data['valorAcumuladoProximoConcurso'] = valorAcumuladoProximoConcurso;
    data['valorEstimadoProximoConcurso'] = valorEstimadoProximoConcurso;
    data['valorSaldoReservaGarantidora'] = valorSaldoReservaGarantidora;
    data['valorTotalPremioFaixaUm'] = valorTotalPremioFaixaUm;
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ganhadores'] = ganhadores;
    data['municipio'] = municipio;
    data['nomeFatansiaUL'] = nomeFatansiaUL;
    data['posicao'] = posicao;
    data['serie'] = serie;
    data['uf'] = uf;
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['descricaoFaixa'] = descricaoFaixa;
    data['faixa'] = faixa;
    data['numeroDeGanhadores'] = numeroDeGanhadores;
    data['valorPremio'] = valorPremio;
    return data;
  }
}
