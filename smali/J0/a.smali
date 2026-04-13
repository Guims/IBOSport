.class public final LJ0/a;
.super Ljava/lang/Object;

# interfaces
.implements LI0/q;


# static fields
.field public static final q:[I

.field public static final r:[I

.field public static final s:[B

.field public static final t:[B


# instance fields
.field public final a:[B

.field public final b:LI0/o;

.field public c:Z

.field public d:J

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:J

.field public j:LI0/s;

.field public k:LI0/L;

.field public l:LI0/L;

.field public m:LI0/F;

.field public n:Z

.field public o:J

.field public p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, LJ0/a;->q:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, LJ0/a;->r:[I

    sget v0, Lk0/C;->a:I

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "#!AMR\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, LJ0/a;->s:[B

    const-string v1, "#!AMR-WB\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, LJ0/a;->t:[B

    return-void

    nop

    :array_0
    .array-data 4
        0xd
        0xe
        0x10
        0x12
        0x14
        0x15
        0x1b
        0x20
        0x6
        0x7
        0x6
        0x6
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x12
        0x18
        0x21
        0x25
        0x29
        0x2f
        0x33
        0x3b
        0x3d
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, LJ0/a;->a:[B

    const/4 v0, -0x1

    iput v0, p0, LJ0/a;->g:I

    new-instance v0, LI0/o;

    invoke-direct {v0}, LI0/o;-><init>()V

    iput-object v0, p0, LJ0/a;->b:LI0/o;

    iput-object v0, p0, LJ0/a;->l:LI0/L;

    return-void
.end method


# virtual methods
.method public final a(LI0/r;)I
    .locals 3

    invoke-interface {p1}, LI0/r;->j()V

    const/4 v0, 0x1

    iget-object v1, p0, LJ0/a;->a:[B

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, LI0/r;->o([BII)V

    aget-byte p1, v1, v2

    and-int/lit16 v0, p1, 0x83

    const/4 v1, 0x0

    if-gtz v0, :cond_5

    shr-int/lit8 p1, p1, 0x3

    const/16 v0, 0xf

    and-int/2addr p1, v0

    if-ltz p1, :cond_3

    if-gt p1, v0, :cond_3

    iget-boolean v0, p0, LJ0/a;->c:Z

    if-eqz v0, :cond_0

    const/16 v2, 0xa

    if-lt p1, v2, :cond_1

    const/16 v2, 0xd

    if-le p1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_3

    const/16 v2, 0xc

    if-lt p1, v2, :cond_1

    const/16 v2, 0xe

    if-le p1, v2, :cond_3

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    sget-object v0, LJ0/a;->r:[I

    aget p1, v0, p1

    return p1

    :cond_2
    sget-object v0, LJ0/a;->q:[I

    aget p1, v0, p1

    return p1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Illegal AMR "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, LJ0/a;->c:Z

    if-eqz v2, :cond_4

    const-string v2, "WB"

    goto :goto_1

    :cond_4
    const-string v2, "NB"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " frame type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid padding bits for frame header "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1
.end method

.method public final b(LI0/r;)Z
    .locals 0

    invoke-virtual {p0, p1}, LJ0/a;->c(LI0/r;)Z

    move-result p1

    return p1
.end method

.method public final c(LI0/r;)Z
    .locals 5

    invoke-interface {p1}, LI0/r;->j()V

    sget-object v0, LJ0/a;->s:[B

    array-length v1, v0

    new-array v1, v1, [B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3, v2}, LI0/r;->o([BII)V

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-boolean v3, p0, LJ0/a;->c:Z

    array-length v0, v0

    invoke-interface {p1, v0}, LI0/r;->n(I)V

    return v2

    :cond_0
    invoke-interface {p1}, LI0/r;->j()V

    sget-object v0, LJ0/a;->t:[B

    array-length v1, v0

    new-array v1, v1, [B

    array-length v4, v0

    invoke-interface {p1, v1, v3, v4}, LI0/r;->o([BII)V

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v2, p0, LJ0/a;->c:Z

    array-length v0, v0

    invoke-interface {p1, v0}, LI0/r;->n(I)V

    return v2

    :cond_1
    return v3
.end method

.method public final e(LI0/r;LI0/D;)I
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, LJ0/a;->k:LI0/L;

    invoke-static {v1}, Lk0/c;->k(Ljava/lang/Object;)V

    sget v1, Lk0/C;->a:I

    invoke-interface/range {p1 .. p1}, LI0/r;->getPosition()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    invoke-virtual/range {p0 .. p1}, LJ0/a;->c(LI0/r;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Could not find AMR header."

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_1
    :goto_0
    iget-boolean v1, v0, LJ0/a;->p:Z

    const/4 v2, 0x1

    if-nez v1, :cond_5

    iput-boolean v2, v0, LJ0/a;->p:Z

    iget-boolean v1, v0, LJ0/a;->c:Z

    if-eqz v1, :cond_2

    const-string v5, "audio/amr-wb"

    goto :goto_1

    :cond_2
    const-string v5, "audio/3gpp"

    :goto_1
    if-eqz v1, :cond_3

    const/16 v6, 0x3e80

    goto :goto_2

    :cond_3
    const/16 v6, 0x1f40

    :goto_2
    if-eqz v1, :cond_4

    sget-object v1, LJ0/a;->r:[I

    const/16 v7, 0x8

    aget v1, v1, v7

    goto :goto_3

    :cond_4
    sget-object v1, LJ0/a;->q:[I

    const/4 v7, 0x7

    aget v1, v1, v7

    :goto_3
    iget-object v7, v0, LJ0/a;->l:LI0/L;

    new-instance v8, Landroidx/media3/common/Format$Builder;

    invoke-direct {v8}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v8, v5}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroidx/media3/common/Format$Builder;->setMaxInputSize(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v1

    invoke-interface {v7, v1}, LI0/L;->format(Landroidx/media3/common/Format;)V

    :cond_5
    iget v1, v0, LJ0/a;->f:I

    const/4 v5, 0x0

    const-wide/16 v6, 0x4e20

    const/4 v8, -0x1

    if-nez v1, :cond_b

    :try_start_0
    invoke-virtual/range {p0 .. p1}, LJ0/a;->a(LI0/r;)I

    move-result v1

    iput v1, v0, LJ0/a;->e:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iput v1, v0, LJ0/a;->f:I

    iget v1, v0, LJ0/a;->g:I

    if-ne v1, v8, :cond_6

    invoke-interface/range {p1 .. p1}, LI0/r;->getPosition()J

    iget v1, v0, LJ0/a;->e:I

    iput v1, v0, LJ0/a;->g:I

    :cond_6
    iget v1, v0, LJ0/a;->g:I

    iget v9, v0, LJ0/a;->e:I

    if-ne v1, v9, :cond_7

    iget v1, v0, LJ0/a;->h:I

    add-int/2addr v1, v2

    iput v1, v0, LJ0/a;->h:I

    :cond_7
    iget-object v1, v0, LJ0/a;->m:LI0/F;

    instance-of v9, v1, LI0/B;

    if-eqz v9, :cond_b

    check-cast v1, LI0/B;

    iget-wide v9, v0, LJ0/a;->i:J

    iget-wide v11, v0, LJ0/a;->d:J

    add-long/2addr v9, v11

    add-long/2addr v9, v6

    invoke-interface/range {p1 .. p1}, LI0/r;->getPosition()J

    move-result-wide v11

    iget v13, v0, LJ0/a;->e:I

    int-to-long v13, v13

    add-long/2addr v11, v13

    iget-object v13, v1, LI0/B;->b:LE1/t;

    iget v14, v13, LE1/t;->q:I

    if-nez v14, :cond_8

    goto :goto_4

    :cond_8
    sub-int/2addr v14, v2

    invoke-virtual {v13, v14}, LE1/t;->p(I)J

    move-result-wide v13

    sub-long v13, v9, v13

    const-wide/32 v15, 0x186a0

    cmp-long v13, v13, v15

    if-gez v13, :cond_9

    goto :goto_5

    :cond_9
    :goto_4
    iget-object v13, v1, LI0/B;->a:LE1/t;

    iget-object v1, v1, LI0/B;->b:LE1/t;

    iget v14, v1, LE1/t;->q:I

    if-nez v14, :cond_a

    cmp-long v14, v9, v3

    if-lez v14, :cond_a

    invoke-virtual {v13, v3, v4}, LE1/t;->n(J)V

    invoke-virtual {v1, v3, v4}, LE1/t;->n(J)V

    :cond_a
    invoke-virtual {v13, v11, v12}, LE1/t;->n(J)V

    invoke-virtual {v1, v9, v10}, LE1/t;->n(J)V

    :goto_5
    iget-boolean v1, v0, LJ0/a;->n:Z

    if-eqz v1, :cond_b

    iget-wide v3, v0, LJ0/a;->o:J

    sub-long/2addr v3, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    cmp-long v1, v3, v6

    if-gez v1, :cond_b

    iput-boolean v5, v0, LJ0/a;->n:Z

    iget-object v1, v0, LJ0/a;->k:LI0/L;

    iput-object v1, v0, LJ0/a;->l:LI0/L;

    goto :goto_7

    :catch_0
    move-object/from16 v4, p1

    :goto_6
    move v5, v8

    goto :goto_8

    :cond_b
    :goto_7
    iget-object v1, v0, LJ0/a;->l:LI0/L;

    iget v3, v0, LJ0/a;->f:I

    move-object/from16 v4, p1

    invoke-interface {v1, v4, v3, v2}, LI0/L;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v1

    if-ne v1, v8, :cond_c

    goto :goto_6

    :cond_c
    iget v2, v0, LJ0/a;->f:I

    sub-int/2addr v2, v1

    iput v2, v0, LJ0/a;->f:I

    if-lez v2, :cond_d

    goto :goto_8

    :cond_d
    iget-object v9, v0, LJ0/a;->l:LI0/L;

    iget-wide v1, v0, LJ0/a;->i:J

    iget-wide v10, v0, LJ0/a;->d:J

    add-long/2addr v10, v1

    iget v13, v0, LJ0/a;->e:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v12, 0x1

    invoke-interface/range {v9 .. v15}, LI0/L;->sampleMetadata(JIIILI0/K;)V

    iget-wide v1, v0, LJ0/a;->d:J

    add-long/2addr v1, v6

    iput-wide v1, v0, LJ0/a;->d:J

    :goto_8
    invoke-interface {v4}, LI0/r;->getLength()J

    iget-object v1, v0, LJ0/a;->m:LI0/F;

    if-eqz v1, :cond_e

    goto :goto_9

    :cond_e
    new-instance v1, LI0/v;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, LI0/v;-><init>(J)V

    iput-object v1, v0, LJ0/a;->m:LI0/F;

    iget-object v2, v0, LJ0/a;->j:LI0/s;

    invoke-interface {v2, v1}, LI0/s;->seekMap(LI0/F;)V

    :goto_9
    if-ne v5, v8, :cond_f

    iget-object v1, v0, LJ0/a;->m:LI0/F;

    instance-of v2, v1, LI0/B;

    if-eqz v2, :cond_f

    iget-wide v2, v0, LJ0/a;->i:J

    iget-wide v6, v0, LJ0/a;->d:J

    add-long/2addr v2, v6

    move-object v4, v1

    check-cast v4, LI0/B;

    iput-wide v2, v4, LI0/B;->c:J

    iget-object v2, v0, LJ0/a;->j:LI0/s;

    invoke-interface {v2, v1}, LI0/s;->seekMap(LI0/F;)V

    :cond_f
    return v5
.end method

.method public final f(JJ)V
    .locals 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LJ0/a;->d:J

    const/4 v2, 0x0

    iput v2, p0, LJ0/a;->e:I

    iput v2, p0, LJ0/a;->f:I

    iput-wide p3, p0, LJ0/a;->o:J

    iget-object p3, p0, LJ0/a;->m:LI0/F;

    instance-of p4, p3, LI0/B;

    if-eqz p4, :cond_2

    check-cast p3, LI0/B;

    iget-object p4, p3, LI0/B;->b:LE1/t;

    iget v0, p4, LE1/t;->q:I

    if-nez v0, :cond_0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    iget-object p3, p3, LI0/B;->a:LE1/t;

    invoke-static {p3, p1, p2}, Lk0/C;->b(LE1/t;J)I

    move-result p1

    invoke-virtual {p4, p1}, LE1/t;->p(I)J

    move-result-wide p1

    :goto_0
    iput-wide p1, p0, LJ0/a;->i:J

    iget-wide p3, p0, LJ0/a;->o:J

    sub-long/2addr p3, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const-wide/16 p3, 0x4e20

    cmp-long p1, p1, p3

    if-gez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, LJ0/a;->n:Z

    iget-object p1, p0, LJ0/a;->b:LI0/o;

    iput-object p1, p0, LJ0/a;->l:LI0/L;

    return-void

    :cond_2
    cmp-long p4, p1, v0

    if-eqz p4, :cond_3

    instance-of p4, p3, Lb1/a;

    if-eqz p4, :cond_3

    check-cast p3, Lb1/a;

    iget-wide v2, p3, Lb1/a;->b:J

    iget p3, p3, Lb1/a;->e:I

    sub-long/2addr p1, v2

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/32 v0, 0x7a1200

    mul-long/2addr p1, v0

    int-to-long p3, p3

    div-long/2addr p1, p3

    iput-wide p1, p0, LJ0/a;->i:J

    return-void

    :cond_3
    iput-wide v0, p0, LJ0/a;->i:J

    return-void
.end method

.method public final k(LI0/s;)V
    .locals 2

    iput-object p1, p0, LJ0/a;->j:LI0/s;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, LI0/s;->track(II)LI0/L;

    move-result-object v0

    iput-object v0, p0, LJ0/a;->k:LI0/L;

    iput-object v0, p0, LJ0/a;->l:LI0/L;

    invoke-interface {p1}, LI0/s;->endTracks()V

    return-void
.end method

.method public final release()V
    .locals 0

    return-void
.end method
