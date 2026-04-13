.class public final Ld1/h;
.super Ld1/i;


# static fields
.field public static final o:[B

.field public static final p:[B


# instance fields
.field public n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Ld1/h;->o:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Ld1/h;->p:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
    .end array-data

    :array_1
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x54t
        0x61t
        0x67t
        0x73t
    .end array-data
.end method

.method public static e(Lk0/u;[B)Z
    .locals 4

    invoke-virtual {p0}, Lk0/u;->a()I

    move-result v0

    array-length v1, p1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lk0/u;->b:I

    array-length v1, p1

    new-array v1, v1, [B

    array-length v3, p1

    invoke-virtual {p0, v1, v2, v3}, Lk0/u;->e([BII)V

    invoke-virtual {p0, v0}, Lk0/u;->G(I)V

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final b(Lk0/u;)J
    .locals 4

    iget-object p1, p1, Lk0/u;->a:[B

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    aget-byte v0, p1, v3

    :cond_0
    invoke-static {v1, v0}, LI0/b;->g(BB)J

    move-result-wide v0

    iget p1, p0, Ld1/i;->i:I

    int-to-long v2, p1

    mul-long/2addr v2, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public final c(Lk0/u;JLY1/c;)Z
    .locals 2

    sget-object p2, Ld1/h;->o:[B

    invoke-static {p1, p2}, Ld1/h;->e(Lk0/u;[B)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    iget-object p2, p1, Lk0/u;->a:[B

    iget p1, p1, Lk0/u;->c:I

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const/16 p2, 0x9

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    invoke-static {p1}, LI0/b;->a([B)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p4, LY1/c;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/Format;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v1, "audio/opus"

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object p2

    const v0, 0xbb80

    invoke-virtual {p2, v0}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    iput-object p1, p4, LY1/c;->q:Ljava/lang/Object;

    return p3

    :cond_1
    sget-object p2, Ld1/h;->p:[B

    invoke-static {p1, p2}, Ld1/h;->e(Lk0/u;[B)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    iget-object p2, p4, LY1/c;->q:Ljava/lang/Object;

    check-cast p2, Landroidx/media3/common/Format;

    invoke-static {p2}, Lk0/c;->k(Ljava/lang/Object;)V

    iget-boolean p2, p0, Ld1/h;->n:Z

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    iput-boolean p3, p0, Ld1/h;->n:Z

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lk0/u;->H(I)V

    invoke-static {p1, v0, v0}, LI0/P;->b(Lk0/u;ZZ)Le4/c;

    move-result-object p1

    iget-object p1, p1, Le4/c;->q:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lp3/H;->k([Ljava/lang/Object;)Lp3/Y;

    move-result-object p1

    invoke-static {p1}, LI0/P;->a(Ljava/util/List;)Landroidx/media3/common/Metadata;

    move-result-object p1

    if-nez p1, :cond_3

    :goto_0
    return p3

    :cond_3
    iget-object p2, p4, LY1/c;->q:Ljava/lang/Object;

    check-cast p2, Landroidx/media3/common/Format;

    invoke-virtual {p2}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object p2

    iget-object v0, p4, LY1/c;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/Format;

    iget-object v0, v0, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    invoke-virtual {p1, v0}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    iput-object p1, p4, LY1/c;->q:Ljava/lang/Object;

    return p3

    :cond_4
    iget-object p1, p4, LY1/c;->q:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/common/Format;

    invoke-static {p1}, Lk0/c;->k(Ljava/lang/Object;)V

    return v0
.end method

.method public final d(Z)V
    .locals 0

    invoke-super {p0, p1}, Ld1/i;->d(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Ld1/h;->n:Z

    :cond_0
    return-void
.end method
