.class public final Lp1/c;
.super Ljava/lang/Object;

# interfaces
.implements Lp1/b;


# instance fields
.field public final a:LI0/s;

.field public final b:LI0/L;

.field public final c:Lc1/c;

.field public final d:Landroidx/media3/common/Format;

.field public final e:I

.field public f:J

.field public g:I

.field public h:J


# direct methods
.method public constructor <init>(LI0/s;LI0/L;Lc1/c;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp1/c;->a:LI0/s;

    iput-object p2, p0, Lp1/c;->b:LI0/L;

    iput-object p3, p0, Lp1/c;->c:Lc1/c;

    iget p1, p3, Lc1/c;->b:I

    iget p2, p3, Lc1/c;->c:I

    iget v0, p3, Lc1/c;->e:I

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x8

    iget p3, p3, Lc1/c;->d:I

    if-ne p3, v0, :cond_0

    mul-int p3, p2, v0

    mul-int/lit8 v1, p3, 0x8

    div-int/lit8 p3, p3, 0xa

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p0, Lp1/c;->e:I

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v0, p4}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p4

    invoke-virtual {p4, v1}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object p4

    invoke-virtual {p4, v1}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroidx/media3/common/Format$Builder;->setMaxInputSize(I)Landroidx/media3/common/Format$Builder;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroidx/media3/common/Format$Builder;->setPcmEncoding(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    iput-object p1, p0, Lp1/c;->d:Landroidx/media3/common/Format;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Expected block size: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; got: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lp1/c;->f:J

    const/4 p1, 0x0

    iput p1, p0, Lp1/c;->g:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lp1/c;->h:J

    return-void
.end method

.method public final b(LI0/r;J)Z
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const/4 v6, 0x1

    if-lez v5, :cond_1

    iget v7, v0, Lp1/c;->g:I

    iget v8, v0, Lp1/c;->e:I

    if-ge v7, v8, :cond_1

    sub-int/2addr v8, v7

    int-to-long v7, v8

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v5, v7

    iget-object v7, v0, Lp1/c;->b:LI0/L;

    move-object/from16 v8, p1

    invoke-interface {v7, v8, v5, v6}, LI0/L;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    move-wide v1, v3

    goto :goto_0

    :cond_0
    iget v3, v0, Lp1/c;->g:I

    add-int/2addr v3, v5

    iput v3, v0, Lp1/c;->g:I

    int-to-long v3, v5

    sub-long/2addr v1, v3

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lp1/c;->c:Lc1/c;

    iget v2, v1, Lc1/c;->d:I

    iget v3, v0, Lp1/c;->g:I

    div-int/2addr v3, v2

    if-lez v3, :cond_2

    iget-wide v7, v0, Lp1/c;->f:J

    iget-wide v9, v0, Lp1/c;->h:J

    iget v1, v1, Lc1/c;->c:I

    int-to-long v13, v1

    sget v1, Lk0/C;->a:I

    sget-object v15, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v11, 0xf4240

    invoke-static/range {v9 .. v15}, Lk0/C;->Y(JJJLjava/math/RoundingMode;)J

    move-result-wide v9

    add-long v12, v7, v9

    mul-int v15, v3, v2

    iget v1, v0, Lp1/c;->g:I

    sub-int v16, v1, v15

    const/4 v14, 0x1

    const/16 v17, 0x0

    iget-object v11, v0, Lp1/c;->b:LI0/L;

    invoke-interface/range {v11 .. v17}, LI0/L;->sampleMetadata(JIIILI0/K;)V

    move/from16 v1, v16

    iget-wide v7, v0, Lp1/c;->h:J

    int-to-long v2, v3

    add-long/2addr v7, v2

    iput-wide v7, v0, Lp1/c;->h:J

    iput v1, v0, Lp1/c;->g:I

    :cond_2
    if-gtz v5, :cond_3

    return v6

    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method public final c(IJ)V
    .locals 7

    new-instance v0, Lp1/e;

    const/4 v2, 0x1

    int-to-long v3, p1

    iget-object v1, p0, Lp1/c;->c:Lc1/c;

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lp1/e;-><init>(Lc1/c;IJJ)V

    iget-object p1, p0, Lp1/c;->a:LI0/s;

    invoke-interface {p1, v0}, LI0/s;->seekMap(LI0/F;)V

    iget-object p1, p0, Lp1/c;->b:LI0/L;

    iget-object p2, p0, Lp1/c;->d:Landroidx/media3/common/Format;

    invoke-interface {p1, p2}, LI0/L;->format(Landroidx/media3/common/Format;)V

    return-void
.end method
