.class public final Lf1/h;
.super Ljava/lang/Object;

# interfaces
.implements LI0/q;


# instance fields
.field public final a:Lf1/m;

.field public final b:Landroidx/media3/common/Format;

.field public final c:Ljava/util/ArrayList;

.field public final d:Lk0/u;

.field public e:[B

.field public f:LI0/L;

.field public g:I

.field public h:I

.field public i:[J

.field public j:J


# direct methods
.method public constructor <init>(Lf1/m;Landroidx/media3/common/Format;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf1/h;->a:Lf1/m;

    sget-object v0, Lk0/C;->f:[B

    iput-object v0, p0, Lf1/h;->e:[B

    new-instance v0, Lk0/u;

    invoke-direct {v0}, Lk0/u;-><init>()V

    iput-object v0, p0, Lf1/h;->d:Lk0/u;

    invoke-virtual {p2}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v0

    const-string v1, "application/x-media3-cues"

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object p2, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p2

    invoke-interface {p1}, Lf1/m;->j()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/media3/common/Format$Builder;->setCueReplacementBehavior(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    iput-object p1, p0, Lf1/h;->b:Landroidx/media3/common/Format;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lf1/h;->c:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput p1, p0, Lf1/h;->h:I

    sget-object p1, Lk0/C;->g:[J

    iput-object p1, p0, Lf1/h;->i:[J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lf1/h;->j:J

    return-void
.end method


# virtual methods
.method public final a(Lf1/g;)V
    .locals 8

    iget-object v0, p0, Lf1/h;->f:LI0/L;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    iget-object v0, p1, Lf1/g;->q:[B

    array-length v5, v0

    iget-object v1, p0, Lf1/h;->d:Lk0/u;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v2, v0

    invoke-virtual {v1, v0, v2}, Lk0/u;->E([BI)V

    iget-object v0, p0, Lf1/h;->f:LI0/L;

    invoke-interface {v0, v1, v5}, LI0/L;->sampleData(Lk0/u;I)V

    iget-object v1, p0, Lf1/h;->f:LI0/L;

    iget-wide v2, p1, Lf1/g;->b:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    invoke-interface/range {v1 .. v7}, LI0/L;->sampleMetadata(JIIILI0/K;)V

    return-void
.end method

.method public final b(LI0/r;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final e(LI0/r;LI0/D;)I
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget v2, v1, Lf1/h;->h:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const/4 v5, 0x5

    if-eq v2, v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-static {v2}, Lk0/c;->j(Z)V

    iget v2, v1, Lf1/h;->h:I

    const/4 v5, 0x2

    const/16 v6, 0x400

    const-wide/16 v7, -0x1

    if-ne v2, v3, :cond_3

    invoke-interface {v0}, LI0/r;->getLength()J

    move-result-wide v9

    cmp-long v2, v9, v7

    if-eqz v2, :cond_1

    invoke-interface {v0}, LI0/r;->getLength()J

    move-result-wide v9

    invoke-static {v9, v10}, La/a;->f(J)I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v6

    :goto_1
    iget-object v9, v1, Lf1/h;->e:[B

    array-length v9, v9

    if-le v2, v9, :cond_2

    new-array v2, v2, [B

    iput-object v2, v1, Lf1/h;->e:[B

    :cond_2
    iput v4, v1, Lf1/h;->g:I

    iput v5, v1, Lf1/h;->h:I

    :cond_3
    iget v2, v1, Lf1/h;->h:I

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v11, v1, Lf1/h;->c:Ljava/util/ArrayList;

    const/4 v12, 0x4

    const/4 v13, -0x1

    if-ne v2, v5, :cond_a

    iget-object v2, v1, Lf1/h;->e:[B

    array-length v5, v2

    iget v14, v1, Lf1/h;->g:I

    if-ne v5, v14, :cond_4

    array-length v5, v2

    add-int/2addr v5, v6

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, v1, Lf1/h;->e:[B

    :cond_4
    iget-object v2, v1, Lf1/h;->e:[B

    iget v5, v1, Lf1/h;->g:I

    array-length v14, v2

    sub-int/2addr v14, v5

    invoke-interface {v0, v2, v5, v14}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result v2

    if-eq v2, v13, :cond_5

    iget v5, v1, Lf1/h;->g:I

    add-int/2addr v5, v2

    iput v5, v1, Lf1/h;->g:I

    :cond_5
    invoke-interface {v0}, LI0/r;->getLength()J

    move-result-wide v14

    cmp-long v5, v14, v7

    if-eqz v5, :cond_6

    iget v5, v1, Lf1/h;->g:I

    move/from16 p2, v4

    int-to-long v4, v5

    cmp-long v4, v4, v14

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_6
    move/from16 p2, v4

    :goto_2
    if-ne v2, v13, :cond_b

    :cond_7
    :try_start_0
    iget-wide v4, v1, Lf1/h;->j:J

    cmp-long v2, v4, v9

    if-eqz v2, :cond_8

    new-instance v2, Lf1/l;

    invoke-direct {v2, v4, v5, v3}, Lf1/l;-><init>(JZ)V

    :goto_3
    move-object/from16 v18, v2

    goto :goto_4

    :cond_8
    sget-object v2, Lf1/l;->c:Lf1/l;

    goto :goto_3

    :goto_4
    iget-object v14, v1, Lf1/h;->a:Lf1/m;

    iget-object v15, v1, Lf1/h;->e:[B

    iget v2, v1, Lf1/h;->g:I

    new-instance v4, LA3/d;

    const/16 v5, 0xd

    invoke-direct {v4, v5, v1}, LA3/d;-><init>(ILjava/lang/Object;)V

    const/16 v16, 0x0

    move/from16 v17, v2

    move-object/from16 v19, v4

    invoke-interface/range {v14 .. v19}, Lf1/m;->d([BIILf1/l;Lk0/h;)V

    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [J

    iput-object v2, v1, Lf1/h;->i:[J

    move/from16 v2, p2

    :goto_5
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_9

    iget-object v4, v1, Lf1/h;->i:[J

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf1/g;

    iget-wide v14, v5, Lf1/g;->b:J

    aput-wide v14, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_9
    sget-object v2, Lk0/C;->f:[B

    iput-object v2, v1, Lf1/h;->e:[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iput v12, v1, Lf1/h;->h:I

    goto :goto_7

    :goto_6
    const-string v2, "SubtitleParser failed."

    invoke-static {v2, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_a
    move/from16 p2, v4

    :cond_b
    :goto_7
    iget v2, v1, Lf1/h;->h:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_f

    invoke-interface {v0}, LI0/r;->getLength()J

    move-result-wide v4

    cmp-long v2, v4, v7

    if-eqz v2, :cond_c

    invoke-interface {v0}, LI0/r;->getLength()J

    move-result-wide v4

    invoke-static {v4, v5}, La/a;->f(J)I

    move-result v6

    :cond_c
    invoke-interface {v0, v6}, LI0/r;->h(I)I

    move-result v0

    if-ne v0, v13, :cond_f

    iget-wide v4, v1, Lf1/h;->j:J

    cmp-long v0, v4, v9

    if-nez v0, :cond_d

    move/from16 v0, p2

    goto :goto_8

    :cond_d
    iget-object v0, v1, Lf1/h;->i:[J

    invoke-static {v0, v4, v5, v3}, Lk0/C;->e([JJZ)I

    move-result v0

    :goto_8
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_e

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf1/g;

    invoke-virtual {v1, v2}, Lf1/h;->a(Lf1/g;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_e
    iput v12, v1, Lf1/h;->h:I

    :cond_f
    iget v0, v1, Lf1/h;->h:I

    if-ne v0, v12, :cond_10

    return v13

    :cond_10
    return p2
.end method

.method public final f(JJ)V
    .locals 1

    iget p1, p0, Lf1/h;->h:I

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lk0/c;->j(Z)V

    iput-wide p3, p0, Lf1/h;->j:J

    iget p1, p0, Lf1/h;->h:I

    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    iput p2, p0, Lf1/h;->h:I

    :cond_1
    iget p1, p0, Lf1/h;->h:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    const/4 p1, 0x3

    iput p1, p0, Lf1/h;->h:I

    :cond_2
    return-void
.end method

.method public final k(LI0/s;)V
    .locals 7

    iget v0, p0, Lf1/h;->h:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lk0/c;->j(Z)V

    const/4 v0, 0x3

    invoke-interface {p1, v1, v0}, LI0/s;->track(II)LI0/L;

    move-result-object v0

    iput-object v0, p0, Lf1/h;->f:LI0/L;

    iget-object v3, p0, Lf1/h;->b:Landroidx/media3/common/Format;

    invoke-interface {v0, v3}, LI0/L;->format(Landroidx/media3/common/Format;)V

    invoke-interface {p1}, LI0/s;->endTracks()V

    new-instance v0, LI0/B;

    new-array v3, v2, [J

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v1

    new-array v6, v2, [J

    aput-wide v4, v6, v1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v4, v5, v3, v6}, LI0/B;-><init>(J[J[J)V

    invoke-interface {p1, v0}, LI0/s;->seekMap(LI0/F;)V

    iput v2, p0, Lf1/h;->h:I

    return-void
.end method

.method public final release()V
    .locals 2

    iget v0, p0, Lf1/h;->h:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lf1/h;->a:Lf1/m;

    invoke-interface {v0}, Lf1/m;->reset()V

    iput v1, p0, Lf1/h;->h:I

    return-void
.end method
