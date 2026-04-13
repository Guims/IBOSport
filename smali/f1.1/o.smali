.class public final Lf1/o;
.super Ljava/lang/Object;

# interfaces
.implements LI0/L;


# instance fields
.field public final a:LI0/L;

.field public final b:Lf1/k;

.field public final c:Lk0/u;

.field public d:I

.field public e:I

.field public f:[B

.field public g:Lf1/m;

.field public h:Landroidx/media3/common/Format;


# direct methods
.method public constructor <init>(LI0/L;Lf1/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf1/o;->a:LI0/L;

    iput-object p2, p0, Lf1/o;->b:Lf1/k;

    const/4 p1, 0x0

    iput p1, p0, Lf1/o;->d:I

    iput p1, p0, Lf1/o;->e:I

    sget-object p1, Lk0/C;->f:[B

    iput-object p1, p0, Lf1/o;->f:[B

    new-instance p1, Lk0/u;

    invoke-direct {p1}, Lk0/u;-><init>()V

    iput-object p1, p0, Lf1/o;->c:Lk0/u;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    iget-object v0, p0, Lf1/o;->f:[B

    array-length v0, v0

    iget v1, p0, Lf1/o;->e:I

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lf1/o;->d:I

    sub-int/2addr v1, v0

    mul-int/lit8 v0, v1, 0x2

    add-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lf1/o;->f:[B

    array-length v2, v0

    if-gt p1, v2, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_1
    new-array p1, p1, [B

    :goto_0
    iget v2, p0, Lf1/o;->d:I

    const/4 v3, 0x0

    invoke-static {v0, v2, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, p0, Lf1/o;->d:I

    iput v1, p0, Lf1/o;->e:I

    iput-object p1, p0, Lf1/o;->f:[B

    return-void
.end method

.method public final format(Landroidx/media3/common/Format;)V
    .locals 5

    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lk0/c;->d(Z)V

    iget-object v0, p0, Lf1/o;->h:Landroidx/media3/common/Format;

    invoke-virtual {p1, v0}, Landroidx/media3/common/Format;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lf1/o;->b:Lf1/k;

    if-nez v0, :cond_2

    iput-object p1, p0, Lf1/o;->h:Landroidx/media3/common/Format;

    invoke-interface {v1, p1}, Lf1/k;->supportsFormat(Landroidx/media3/common/Format;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1, p1}, Lf1/k;->k(Landroidx/media3/common/Format;)Lf1/m;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lf1/o;->g:Lf1/m;

    :cond_2
    iget-object v0, p0, Lf1/o;->g:Lf1/m;

    iget-object v2, p0, Lf1/o;->a:LI0/L;

    if-nez v0, :cond_3

    invoke-interface {v2, p1}, LI0/L;->format(Landroidx/media3/common/Format;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v0

    const-string v3, "application/x-media3-cues"

    invoke-virtual {v0, v3}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object v3, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    const-wide v3, 0x7fffffffffffffffL

    invoke-virtual {v0, v3, v4}, Landroidx/media3/common/Format$Builder;->setSubsampleOffsetUs(J)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-interface {v1, p1}, Lf1/k;->c(Landroidx/media3/common/Format;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/media3/common/Format$Builder;->setCueReplacementBehavior(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    invoke-interface {v2, p1}, LI0/L;->format(Landroidx/media3/common/Format;)V

    return-void
.end method

.method public final sampleData(Landroidx/media3/common/DataReader;IZI)I
    .locals 1

    iget-object p4, p0, Lf1/o;->g:Lf1/m;

    if-nez p4, :cond_0

    iget-object p4, p0, Lf1/o;->a:LI0/L;

    const/4 v0, 0x0

    invoke-interface {p4, p1, p2, p3, v0}, LI0/L;->sampleData(Landroidx/media3/common/DataReader;IZI)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p2}, Lf1/o;->a(I)V

    iget-object p4, p0, Lf1/o;->f:[B

    iget v0, p0, Lf1/o;->e:I

    invoke-interface {p1, p4, v0, p2}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    if-eqz p3, :cond_1

    return p2

    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_2
    iget p2, p0, Lf1/o;->e:I

    add-int/2addr p2, p1

    iput p2, p0, Lf1/o;->e:I

    return p1
.end method

.method public final sampleData(Lk0/u;II)V
    .locals 1

    iget-object v0, p0, Lf1/o;->g:Lf1/m;

    if-nez v0, :cond_0

    iget-object v0, p0, Lf1/o;->a:LI0/L;

    invoke-interface {v0, p1, p2, p3}, LI0/L;->sampleData(Lk0/u;II)V

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lf1/o;->a(I)V

    iget-object p3, p0, Lf1/o;->f:[B

    iget v0, p0, Lf1/o;->e:I

    invoke-virtual {p1, p3, v0, p2}, Lk0/u;->e([BII)V

    iget p1, p0, Lf1/o;->e:I

    add-int/2addr p1, p2

    iput p1, p0, Lf1/o;->e:I

    return-void
.end method

.method public final sampleMetadata(JIIILI0/K;)V
    .locals 8

    iget-object v0, p0, Lf1/o;->g:Lf1/m;

    if-nez v0, :cond_0

    iget-object v1, p0, Lf1/o;->a:LI0/L;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, LI0/L;->sampleMetadata(JIIILI0/K;)V

    return-void

    :cond_0
    move-wide v2, p1

    move v4, p3

    move v6, p5

    move-object v7, p6

    const/4 v0, 0x0

    if-nez v7, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    const-string p2, "DRM on subtitles is not supported"

    invoke-static {p2, p1}, Lk0/c;->c(Ljava/lang/String;Z)V

    iget p1, p0, Lf1/o;->e:I

    sub-int/2addr p1, v6

    sub-int p3, p1, p4

    iget-object p1, p0, Lf1/o;->g:Lf1/m;

    iget-object p2, p0, Lf1/o;->f:[B

    new-instance p6, Lf1/n;

    invoke-direct {p6, p0, v2, v3, v4}, Lf1/n;-><init>(Lf1/o;JI)V

    sget-object p5, Lf1/l;->c:Lf1/l;

    invoke-interface/range {p1 .. p6}, Lf1/m;->d([BIILf1/l;Lk0/h;)V

    add-int/2addr p3, p4

    iput p3, p0, Lf1/o;->d:I

    iget p1, p0, Lf1/o;->e:I

    if-ne p3, p1, :cond_2

    iput v0, p0, Lf1/o;->d:I

    iput v0, p0, Lf1/o;->e:I

    :cond_2
    return-void
.end method
