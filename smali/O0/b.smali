.class public final LO0/b;
.super Ljava/lang/Object;

# interfaces
.implements LI0/q;


# instance fields
.field public final a:Lk0/u;

.field public final b:Lk0/u;

.field public final c:Lk0/u;

.field public final d:Lk0/u;

.field public final e:LO0/c;

.field public f:LI0/s;

.field public g:I

.field public h:Z

.field public i:J

.field public j:I

.field public k:I

.field public l:I

.field public m:J

.field public n:Z

.field public o:LO0/a;

.field public p:LO0/e;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lk0/u;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lk0/u;-><init>(I)V

    iput-object v0, p0, LO0/b;->a:Lk0/u;

    new-instance v0, Lk0/u;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lk0/u;-><init>(I)V

    iput-object v0, p0, LO0/b;->b:Lk0/u;

    new-instance v0, Lk0/u;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lk0/u;-><init>(I)V

    iput-object v0, p0, LO0/b;->c:Lk0/u;

    new-instance v0, Lk0/u;

    invoke-direct {v0}, Lk0/u;-><init>()V

    iput-object v0, p0, LO0/b;->d:Lk0/u;

    new-instance v0, LO0/c;

    new-instance v1, LI0/o;

    invoke-direct {v1}, LI0/o;-><init>()V

    invoke-direct {v0, v1}, LL1/a;-><init>(LI0/L;)V

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, v0, LO0/c;->b:J

    const/4 v1, 0x0

    new-array v2, v1, [J

    iput-object v2, v0, LO0/c;->c:[J

    new-array v1, v1, [J

    iput-object v1, v0, LO0/c;->d:[J

    iput-object v0, p0, LO0/b;->e:LO0/c;

    const/4 v0, 0x1

    iput v0, p0, LO0/b;->g:I

    return-void
.end method


# virtual methods
.method public final a(LI0/r;)Lk0/u;
    .locals 5

    iget v0, p0, LO0/b;->l:I

    iget-object v1, p0, LO0/b;->d:Lk0/u;

    iget-object v2, v1, Lk0/u;->a:[B

    array-length v3, v2

    const/4 v4, 0x0

    if-le v0, v3, :cond_0

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v1, v0, v4}, Lk0/u;->E([BI)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v4}, Lk0/u;->G(I)V

    :goto_0
    iget v0, p0, LO0/b;->l:I

    invoke-virtual {v1, v0}, Lk0/u;->F(I)V

    iget-object v0, v1, Lk0/u;->a:[B

    iget v2, p0, LO0/b;->l:I

    invoke-interface {p1, v0, v4, v2}, LI0/r;->readFully([BII)V

    return-object v1
.end method

.method public final b(LI0/r;)Z
    .locals 4

    iget-object v0, p0, LO0/b;->a:Lk0/u;

    iget-object v1, v0, Lk0/u;->a:[B

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3, v2}, LI0/r;->o([BII)V

    invoke-virtual {v0, v3}, Lk0/u;->G(I)V

    invoke-virtual {v0}, Lk0/u;->x()I

    move-result v1

    const v2, 0x464c56

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lk0/u;->a:[B

    const/4 v2, 0x2

    invoke-interface {p1, v1, v3, v2}, LI0/r;->o([BII)V

    invoke-virtual {v0, v3}, Lk0/u;->G(I)V

    invoke-virtual {v0}, Lk0/u;->A()I

    move-result v1

    and-int/lit16 v1, v1, 0xfa

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lk0/u;->a:[B

    const/4 v2, 0x4

    invoke-interface {p1, v1, v3, v2}, LI0/r;->o([BII)V

    invoke-virtual {v0, v3}, Lk0/u;->G(I)V

    invoke-virtual {v0}, Lk0/u;->g()I

    move-result v1

    invoke-interface {p1}, LI0/r;->j()V

    invoke-interface {p1, v1}, LI0/r;->f(I)V

    iget-object v1, v0, Lk0/u;->a:[B

    invoke-interface {p1, v1, v3, v2}, LI0/r;->o([BII)V

    invoke-virtual {v0, v3}, Lk0/u;->G(I)V

    invoke-virtual {v0}, Lk0/u;->g()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v3
.end method

.method public final e(LI0/r;LI0/D;)I
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, LO0/b;->f:LI0/s;

    invoke-static {v2}, Lk0/c;->k(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget v2, v0, LO0/b;->g:I

    const/16 v3, 0x9

    const/16 v4, 0x8

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-eq v2, v7, :cond_28

    const/4 v9, 0x3

    if-eq v2, v5, :cond_27

    if-eq v2, v9, :cond_25

    if-ne v2, v6, :cond_24

    iget-boolean v2, v0, LO0/b;->h:Z

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v13, v0, LO0/b;->e:LO0/c;

    if-eqz v2, :cond_1

    iget-wide v14, v0, LO0/b;->i:J

    iget-wide v11, v0, LO0/b;->m:J

    add-long/2addr v14, v11

    :goto_1
    move-wide/from16 v17, v14

    goto :goto_2

    :cond_1
    iget-wide v11, v13, LO0/c;->b:J

    cmp-long v2, v11, v9

    if-nez v2, :cond_2

    const-wide/16 v17, 0x0

    goto :goto_2

    :cond_2
    iget-wide v14, v0, LO0/b;->m:J

    goto :goto_1

    :goto_2
    iget v2, v0, LO0/b;->k:I

    if-ne v2, v4, :cond_e

    iget-object v4, v0, LO0/b;->o:LO0/a;

    if-eqz v4, :cond_e

    iget-boolean v2, v0, LO0/b;->n:Z

    if-nez v2, :cond_3

    iget-object v2, v0, LO0/b;->f:LI0/s;

    new-instance v3, LI0/v;

    invoke-direct {v3, v9, v10}, LI0/v;-><init>(J)V

    invoke-interface {v2, v3}, LI0/s;->seekMap(LI0/F;)V

    iput-boolean v7, v0, LO0/b;->n:Z

    :cond_3
    iget-object v2, v0, LO0/b;->o:LO0/a;

    invoke-virtual/range {p0 .. p1}, LO0/b;->a(LI0/r;)Lk0/u;

    move-result-object v3

    iget-object v4, v2, LL1/a;->a:Ljava/lang/Object;

    check-cast v4, LI0/L;

    iget-boolean v11, v2, LO0/a;->b:Z

    const/4 v12, 0x1

    if-nez v11, :cond_9

    invoke-virtual {v3}, Lk0/u;->u()I

    move-result v11

    shr-int/lit8 v14, v11, 0x4

    and-int/lit8 v14, v14, 0xf

    iput v14, v2, LO0/a;->d:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_4

    shr-int/lit8 v11, v11, 0x2

    and-int/lit8 v11, v11, 0x3

    sget-object v14, LO0/a;->e:[I

    aget v11, v14, v11

    new-instance v14, Landroidx/media3/common/Format$Builder;

    invoke-direct {v14}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v15, "audio/mpeg"

    invoke-virtual {v14, v15}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v14

    invoke-virtual {v14, v12}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v11

    invoke-interface {v4, v11}, LI0/L;->format(Landroidx/media3/common/Format;)V

    iput-boolean v12, v2, LO0/a;->c:Z

    goto :goto_5

    :cond_4
    const/4 v11, 0x7

    if-eq v14, v11, :cond_7

    const/16 v15, 0x8

    if-ne v14, v15, :cond_5

    goto :goto_3

    :cond_5
    const/16 v4, 0xa

    if-ne v14, v4, :cond_6

    goto :goto_5

    :cond_6
    new-instance v1, LO0/d;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Audio format not supported: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v2, LO0/a;->d:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, LO0/d;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_3
    if-ne v14, v11, :cond_8

    const-string v11, "audio/g711-alaw"

    goto :goto_4

    :cond_8
    const-string v11, "audio/g711-mlaw"

    :goto_4
    new-instance v14, Landroidx/media3/common/Format$Builder;

    invoke-direct {v14}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v14, v11}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v11

    invoke-virtual {v11, v12}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v11

    const/16 v14, 0x1f40

    invoke-virtual {v11, v14}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v11

    invoke-interface {v4, v11}, LI0/L;->format(Landroidx/media3/common/Format;)V

    iput-boolean v12, v2, LO0/a;->c:Z

    :goto_5
    iput-boolean v12, v2, LO0/a;->b:Z

    goto :goto_6

    :cond_9
    invoke-virtual {v3, v12}, Lk0/u;->H(I)V

    :goto_6
    iget-object v4, v2, LL1/a;->a:Ljava/lang/Object;

    check-cast v4, LI0/L;

    iget v11, v2, LO0/a;->d:I

    const/4 v12, 0x2

    const/4 v14, 0x1

    if-ne v11, v12, :cond_a

    invoke-virtual {v3}, Lk0/u;->a()I

    move-result v11

    invoke-interface {v4, v3, v11}, LI0/L;->sampleData(Lk0/u;I)V

    iget-object v2, v2, LL1/a;->a:Ljava/lang/Object;

    move-object/from16 v16, v2

    check-cast v16, LI0/L;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v19, 0x1

    move/from16 v20, v11

    invoke-interface/range {v16 .. v22}, LI0/L;->sampleMetadata(JIIILI0/K;)V

    goto :goto_7

    :cond_a
    invoke-virtual {v3}, Lk0/u;->u()I

    move-result v11

    const/4 v12, 0x0

    if-nez v11, :cond_c

    iget-boolean v15, v2, LO0/a;->c:Z

    if-nez v15, :cond_c

    invoke-virtual {v3}, Lk0/u;->a()I

    move-result v11

    new-array v15, v11, [B

    invoke-virtual {v3, v15, v12, v11}, Lk0/u;->e([BII)V

    new-instance v3, LI0/N;

    invoke-direct {v3, v15, v11}, LI0/N;-><init>([BI)V

    invoke-static {v3, v12}, LI0/b;->i(LI0/N;Z)LI0/a;

    move-result-object v3

    new-instance v11, Landroidx/media3/common/Format$Builder;

    invoke-direct {v11}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v12, "audio/mp4a-latm"

    invoke-virtual {v11, v12}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v11

    iget-object v12, v3, LI0/a;->a:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v11

    iget v12, v3, LI0/a;->c:I

    invoke-virtual {v11, v12}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v11

    iget v3, v3, LI0/a;->b:I

    invoke-virtual {v11, v3}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    invoke-static {v15}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v3

    invoke-interface {v4, v3}, LI0/L;->format(Landroidx/media3/common/Format;)V

    iput-boolean v14, v2, LO0/a;->c:Z

    :cond_b
    const/4 v14, 0x0

    goto :goto_7

    :cond_c
    iget v12, v2, LO0/a;->d:I

    const/16 v15, 0xa

    if-ne v12, v15, :cond_d

    if-ne v11, v14, :cond_b

    :cond_d
    invoke-virtual {v3}, Lk0/u;->a()I

    move-result v11

    invoke-interface {v4, v3, v11}, LI0/L;->sampleData(Lk0/u;I)V

    iget-object v2, v2, LL1/a;->a:Ljava/lang/Object;

    move-object/from16 v16, v2

    check-cast v16, LI0/L;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v19, 0x1

    move/from16 v20, v11

    invoke-interface/range {v16 .. v22}, LI0/L;->sampleMetadata(JIIILI0/K;)V

    :goto_7
    move v2, v7

    move-wide/from16 v19, v9

    const/16 p2, 0x0

    goto/16 :goto_10

    :cond_e
    if-ne v2, v3, :cond_18

    iget-object v3, v0, LO0/b;->p:LO0/e;

    if-eqz v3, :cond_18

    iget-boolean v2, v0, LO0/b;->n:Z

    if-nez v2, :cond_f

    iget-object v2, v0, LO0/b;->f:LI0/s;

    new-instance v3, LI0/v;

    invoke-direct {v3, v9, v10}, LI0/v;-><init>(J)V

    invoke-interface {v2, v3}, LI0/s;->seekMap(LI0/F;)V

    iput-boolean v7, v0, LO0/b;->n:Z

    :cond_f
    iget-object v2, v0, LO0/b;->p:LO0/e;

    invoke-virtual/range {p0 .. p1}, LO0/b;->a(LI0/r;)Lk0/u;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Lk0/u;->u()I

    move-result v4

    shr-int/lit8 v11, v4, 0x4

    and-int/lit8 v11, v11, 0xf

    and-int/lit8 v4, v4, 0xf

    const/4 v12, 0x7

    if-ne v4, v12, :cond_17

    iput v11, v2, LO0/e;->g:I

    const/4 v4, 0x5

    if-eq v11, v4, :cond_10

    const/4 v4, 0x1

    goto :goto_8

    :cond_10
    const/4 v4, 0x0

    :goto_8
    if-eqz v4, :cond_16

    iget-object v4, v2, LO0/e;->b:Lk0/u;

    iget-object v11, v2, LL1/a;->a:Ljava/lang/Object;

    check-cast v11, LI0/L;

    iget-object v12, v2, LO0/e;->c:Lk0/u;

    invoke-virtual {v3}, Lk0/u;->u()I

    move-result v14

    iget-object v15, v3, Lk0/u;->a:[B

    move-wide/from16 v19, v9

    iget v9, v3, Lk0/u;->b:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v3, Lk0/u;->b:I

    const/16 p2, 0x0

    aget-byte v8, v15, v9

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    shr-int/lit8 v8, v8, 0x8

    add-int/lit8 v5, v9, 0x2

    iput v5, v3, Lk0/u;->b:I

    aget-byte v10, v15, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v8, v10

    add-int/lit8 v9, v9, 0x3

    iput v9, v3, Lk0/u;->b:I

    aget-byte v5, v15, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v8

    int-to-long v8, v5

    const-wide/16 v21, 0x3e8

    mul-long v8, v8, v21

    add-long v22, v8, v17

    const/4 v5, 0x0

    const/4 v8, 0x1

    if-nez v14, :cond_11

    iget-boolean v9, v2, LO0/e;->e:Z

    if-nez v9, :cond_11

    new-instance v4, Lk0/u;

    invoke-virtual {v3}, Lk0/u;->a()I

    move-result v9

    new-array v9, v9, [B

    invoke-direct {v4, v9}, Lk0/u;-><init>([B)V

    invoke-virtual {v3}, Lk0/u;->a()I

    move-result v10

    invoke-virtual {v3, v9, v5, v10}, Lk0/u;->e([BII)V

    invoke-static {v4}, LI0/f;->a(Lk0/u;)LI0/f;

    move-result-object v3

    iget v4, v3, LI0/f;->b:I

    iput v4, v2, LO0/e;->d:I

    new-instance v4, Landroidx/media3/common/Format$Builder;

    invoke-direct {v4}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v9, "video/avc"

    invoke-virtual {v4, v9}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    iget-object v9, v3, LI0/f;->l:Ljava/lang/String;

    invoke-virtual {v4, v9}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    iget v9, v3, LI0/f;->c:I

    invoke-virtual {v4, v9}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    iget v9, v3, LI0/f;->d:I

    invoke-virtual {v4, v9}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    iget v9, v3, LI0/f;->k:F

    invoke-virtual {v4, v9}, Landroidx/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    iget-object v3, v3, LI0/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v3

    invoke-interface {v11, v3}, LI0/L;->format(Landroidx/media3/common/Format;)V

    iput-boolean v8, v2, LO0/e;->e:Z

    goto :goto_b

    :cond_11
    if-ne v14, v8, :cond_15

    iget-boolean v9, v2, LO0/e;->e:Z

    if-eqz v9, :cond_15

    iget v9, v2, LO0/e;->g:I

    if-ne v9, v8, :cond_12

    move/from16 v24, v8

    goto :goto_9

    :cond_12
    move/from16 v24, v5

    :goto_9
    iget-boolean v9, v2, LO0/e;->f:Z

    if-nez v9, :cond_13

    if-nez v24, :cond_13

    goto :goto_b

    :cond_13
    iget-object v9, v12, Lk0/u;->a:[B

    aput-byte v5, v9, v5

    aput-byte v5, v9, v8

    const/4 v10, 0x2

    aput-byte v5, v9, v10

    iget v9, v2, LO0/e;->d:I

    const/4 v10, 0x4

    rsub-int/lit8 v9, v9, 0x4

    move/from16 v25, v5

    :goto_a
    invoke-virtual {v3}, Lk0/u;->a()I

    move-result v14

    if-lez v14, :cond_14

    iget-object v14, v12, Lk0/u;->a:[B

    iget v15, v2, LO0/e;->d:I

    invoke-virtual {v3, v14, v9, v15}, Lk0/u;->e([BII)V

    invoke-virtual {v12, v5}, Lk0/u;->G(I)V

    invoke-virtual {v12}, Lk0/u;->y()I

    move-result v14

    invoke-virtual {v4, v5}, Lk0/u;->G(I)V

    invoke-interface {v11, v4, v10}, LI0/L;->sampleData(Lk0/u;I)V

    add-int/lit8 v25, v25, 0x4

    invoke-interface {v11, v3, v14}, LI0/L;->sampleData(Lk0/u;I)V

    add-int v25, v25, v14

    goto :goto_a

    :cond_14
    iget-object v3, v2, LL1/a;->a:Ljava/lang/Object;

    move-object/from16 v21, v3

    check-cast v21, LI0/L;

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-interface/range {v21 .. v27}, LI0/L;->sampleMetadata(JIIILI0/K;)V

    iput-boolean v8, v2, LO0/e;->f:Z

    move v5, v8

    :cond_15
    :goto_b
    if-eqz v5, :cond_20

    move v14, v7

    goto :goto_c

    :cond_16
    move-wide/from16 v19, v9

    const/16 p2, 0x0

    goto/16 :goto_f

    :goto_c
    move v2, v7

    goto/16 :goto_10

    :cond_17
    new-instance v1, LO0/d;

    const-string v2, "Video format not supported: "

    invoke-static {v4, v2}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, LO0/d;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    move-wide/from16 v19, v9

    const/16 p2, 0x0

    const/16 v3, 0x12

    if-ne v2, v3, :cond_21

    iget-boolean v2, v0, LO0/b;->n:Z

    if-nez v2, :cond_21

    invoke-virtual/range {p0 .. p1}, LO0/b;->a(LI0/r;)Lk0/u;

    move-result-object v2

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lk0/u;->u()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_19

    goto/16 :goto_e

    :cond_19
    invoke-static {v2}, LO0/c;->d(Lk0/u;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "onMetaData"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto/16 :goto_e

    :cond_1a
    invoke-virtual {v2}, Lk0/u;->a()I

    move-result v3

    if-nez v3, :cond_1b

    goto/16 :goto_e

    :cond_1b
    invoke-virtual {v2}, Lk0/u;->u()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1c

    goto/16 :goto_e

    :cond_1c
    invoke-static {v2}, LO0/c;->c(Lk0/u;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "duration"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Double;

    const-wide v8, 0x412e848000000000L    # 1000000.0

    if-eqz v4, :cond_1d

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/16 v10, 0x0

    cmpl-double v5, v3, v10

    if-lez v5, :cond_1d

    mul-double/2addr v3, v8

    double-to-long v3, v3

    iput-wide v3, v13, LO0/c;->b:J

    :cond_1d
    const-string v3, "keyframes"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_1f

    check-cast v2, Ljava/util/Map;

    const-string v3, "filepositions"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "times"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_1f

    instance-of v4, v2, Ljava/util/List;

    if-eqz v4, :cond_1f

    check-cast v3, Ljava/util/List;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v5, v4, [J

    iput-object v5, v13, LO0/c;->c:[J

    new-array v5, v4, [J

    iput-object v5, v13, LO0/c;->d:[J

    const/4 v5, 0x0

    move v10, v5

    :goto_d
    if-ge v10, v4, :cond_1f

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    instance-of v14, v12, Ljava/lang/Double;

    if-eqz v14, :cond_1e

    instance-of v14, v11, Ljava/lang/Double;

    if-eqz v14, :cond_1e

    iget-object v14, v13, LO0/c;->c:[J

    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    move-wide/from16 v21, v8

    mul-double v8, v17, v21

    double-to-long v8, v8

    aput-wide v8, v14, v10

    iget-object v8, v13, LO0/c;->d:[J

    check-cast v11, Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->longValue()J

    move-result-wide v11

    aput-wide v11, v8, v10

    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v8, v21

    goto :goto_d

    :cond_1e
    new-array v2, v5, [J

    iput-object v2, v13, LO0/c;->c:[J

    new-array v2, v5, [J

    iput-object v2, v13, LO0/c;->d:[J

    :cond_1f
    :goto_e
    iget-wide v2, v13, LO0/c;->b:J

    cmp-long v4, v2, v19

    if-eqz v4, :cond_20

    iget-object v4, v0, LO0/b;->f:LI0/s;

    new-instance v5, LI0/B;

    iget-object v8, v13, LO0/c;->d:[J

    iget-object v9, v13, LO0/c;->c:[J

    invoke-direct {v5, v2, v3, v8, v9}, LI0/B;-><init>(J[J[J)V

    invoke-interface {v4, v5}, LI0/s;->seekMap(LI0/F;)V

    iput-boolean v7, v0, LO0/b;->n:Z

    :cond_20
    :goto_f
    move/from16 v14, p2

    goto/16 :goto_c

    :cond_21
    iget v2, v0, LO0/b;->l:I

    invoke-interface {v1, v2}, LI0/r;->n(I)V

    move/from16 v2, p2

    move v14, v2

    :goto_10
    iget-boolean v3, v0, LO0/b;->h:Z

    if-nez v3, :cond_23

    if-eqz v14, :cond_23

    iput-boolean v7, v0, LO0/b;->h:Z

    iget-wide v3, v13, LO0/c;->b:J

    cmp-long v3, v3, v19

    if-nez v3, :cond_22

    iget-wide v3, v0, LO0/b;->m:J

    neg-long v11, v3

    goto :goto_11

    :cond_22
    const-wide/16 v11, 0x0

    :goto_11
    iput-wide v11, v0, LO0/b;->i:J

    :cond_23
    iput v6, v0, LO0/b;->j:I

    const/4 v3, 0x2

    iput v3, v0, LO0/b;->g:I

    if-eqz v2, :cond_0

    return p2

    :cond_24
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_25
    const/16 p2, 0x0

    iget-object v2, v0, LO0/b;->c:Lk0/u;

    iget-object v3, v2, Lk0/u;->a:[B

    const/16 v4, 0xb

    move/from16 v5, p2

    invoke-interface {v1, v3, v5, v4, v7}, LI0/r;->b([BIIZ)Z

    move-result v3

    if-nez v3, :cond_26

    goto :goto_12

    :cond_26
    invoke-virtual {v2, v5}, Lk0/u;->G(I)V

    invoke-virtual {v2}, Lk0/u;->u()I

    move-result v3

    iput v3, v0, LO0/b;->k:I

    invoke-virtual {v2}, Lk0/u;->x()I

    move-result v3

    iput v3, v0, LO0/b;->l:I

    invoke-virtual {v2}, Lk0/u;->x()I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v0, LO0/b;->m:J

    invoke-virtual {v2}, Lk0/u;->u()I

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    int-to-long v3, v3

    iget-wide v7, v0, LO0/b;->m:J

    or-long/2addr v3, v7

    const-wide/16 v7, 0x3e8

    mul-long/2addr v3, v7

    iput-wide v3, v0, LO0/b;->m:J

    invoke-virtual {v2, v9}, Lk0/u;->H(I)V

    iput v6, v0, LO0/b;->g:I

    goto/16 :goto_0

    :cond_27
    iget v2, v0, LO0/b;->j:I

    invoke-interface {v1, v2}, LI0/r;->n(I)V

    const/4 v5, 0x0

    iput v5, v0, LO0/b;->j:I

    iput v9, v0, LO0/b;->g:I

    goto/16 :goto_0

    :cond_28
    const/4 v5, 0x0

    iget-object v2, v0, LO0/b;->b:Lk0/u;

    iget-object v8, v2, Lk0/u;->a:[B

    invoke-interface {v1, v8, v5, v3, v7}, LI0/r;->b([BIIZ)Z

    move-result v8

    if-nez v8, :cond_29

    :goto_12
    const/4 v1, -0x1

    return v1

    :cond_29
    invoke-virtual {v2, v5}, Lk0/u;->G(I)V

    invoke-virtual {v2, v6}, Lk0/u;->H(I)V

    invoke-virtual {v2}, Lk0/u;->u()I

    move-result v6

    and-int/lit8 v8, v6, 0x4

    if-eqz v8, :cond_2a

    move v8, v7

    goto :goto_13

    :cond_2a
    move v8, v5

    :goto_13
    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2b

    move v5, v7

    :cond_2b
    if-eqz v8, :cond_2c

    iget-object v6, v0, LO0/b;->o:LO0/a;

    if-nez v6, :cond_2c

    new-instance v6, LO0/a;

    iget-object v8, v0, LO0/b;->f:LI0/s;

    invoke-interface {v8, v4, v7}, LI0/s;->track(II)LI0/L;

    move-result-object v4

    invoke-direct {v6, v4}, LL1/a;-><init>(LI0/L;)V

    iput-object v6, v0, LO0/b;->o:LO0/a;

    :cond_2c
    if-eqz v5, :cond_2d

    iget-object v4, v0, LO0/b;->p:LO0/e;

    if-nez v4, :cond_2d

    new-instance v4, LO0/e;

    iget-object v5, v0, LO0/b;->f:LI0/s;

    const/4 v6, 0x2

    invoke-interface {v5, v3, v6}, LI0/s;->track(II)LI0/L;

    move-result-object v3

    invoke-direct {v4, v3}, LO0/e;-><init>(LI0/L;)V

    iput-object v4, v0, LO0/b;->p:LO0/e;

    :cond_2d
    iget-object v3, v0, LO0/b;->f:LI0/s;

    invoke-interface {v3}, LI0/s;->endTracks()V

    invoke-virtual {v2}, Lk0/u;->g()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    iput v2, v0, LO0/b;->j:I

    const/4 v3, 0x2

    iput v3, v0, LO0/b;->g:I

    goto/16 :goto_0
.end method

.method public final f(JJ)V
    .locals 0

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput p1, p0, LO0/b;->g:I

    iput-boolean p2, p0, LO0/b;->h:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    iput p1, p0, LO0/b;->g:I

    :goto_0
    iput p2, p0, LO0/b;->j:I

    return-void
.end method

.method public final k(LI0/s;)V
    .locals 0

    iput-object p1, p0, LO0/b;->f:LI0/s;

    return-void
.end method

.method public final release()V
    .locals 0

    return-void
.end method
