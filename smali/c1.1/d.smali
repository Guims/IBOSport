.class public abstract Lc1/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lk0/C;->a:I

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "OpusHead"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lc1/d;->a:[B

    return-void
.end method

.method public static a(Ll0/b;)Landroid/util/Pair;
    .locals 8

    const v0, 0x656c7374

    invoke-virtual {p0, v0}, Ll0/b;->l(I)Ll0/c;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Ll0/c;->r:Lk0/u;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lk0/u;->G(I)V

    invoke-virtual {p0}, Lk0/u;->g()I

    move-result v0

    invoke-static {v0}, Lc1/d;->d(I)I

    move-result v0

    invoke-virtual {p0}, Lk0/u;->y()I

    move-result v1

    new-array v2, v1, [J

    new-array v3, v1, [J

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    invoke-virtual {p0}, Lk0/u;->z()J

    move-result-wide v6

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lk0/u;->w()J

    move-result-wide v6

    :goto_1
    aput-wide v6, v2, v4

    if-ne v0, v5, :cond_2

    invoke-virtual {p0}, Lk0/u;->o()J

    move-result-wide v6

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lk0/u;->g()I

    move-result v6

    int-to-long v6, v6

    :goto_2
    aput-wide v6, v3, v4

    invoke-virtual {p0}, Lk0/u;->r()S

    move-result v6

    if-ne v6, v5, :cond_3

    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lk0/u;->H(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported media rate."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lk0/u;I)Landroidx/media3/exoplayer/source/Z;
    .locals 10

    add-int/lit8 p1, p1, 0xc

    invoke-virtual {p0, p1}, Lk0/u;->G(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lk0/u;->H(I)V

    invoke-static {p0}, Lc1/d;->c(Lk0/u;)I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lk0/u;->H(I)V

    invoke-virtual {p0}, Lk0/u;->u()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lk0/u;->H(I)V

    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lk0/u;->u()I

    move-result v2

    invoke-virtual {p0, v2}, Lk0/u;->H(I)V

    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lk0/u;->H(I)V

    :cond_2
    invoke-virtual {p0, p1}, Lk0/u;->H(I)V

    invoke-static {p0}, Lc1/d;->c(Lk0/u;)I

    invoke-virtual {p0}, Lk0/u;->u()I

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "audio/mpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "audio/vnd.dts"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "audio/vnd.dts.hd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lk0/u;->H(I)V

    invoke-virtual {p0}, Lk0/u;->w()J

    move-result-wide v0

    invoke-virtual {p0}, Lk0/u;->w()J

    move-result-wide v3

    invoke-virtual {p0, p1}, Lk0/u;->H(I)V

    invoke-static {p0}, Lc1/d;->c(Lk0/u;)I

    move-result p1

    move-wide v4, v3

    new-array v3, p1, [B

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v6, p1}, Lk0/u;->e([BII)V

    move-wide p0, v0

    new-instance v1, Landroidx/media3/exoplayer/source/Z;

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    const-wide/16 v8, -0x1

    if-lez v0, :cond_4

    goto :goto_0

    :cond_4
    move-wide v4, v8

    :goto_0
    cmp-long v0, p0, v6

    if-lez v0, :cond_5

    move-wide v6, p0

    goto :goto_1

    :cond_5
    move-wide v6, v8

    :goto_1
    invoke-direct/range {v1 .. v7}, Landroidx/media3/exoplayer/source/Z;-><init>(Ljava/lang/String;[BJJ)V

    return-object v1

    :cond_6
    :goto_2
    new-instance v1, Landroidx/media3/exoplayer/source/Z;

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v7}, Landroidx/media3/exoplayer/source/Z;-><init>(Ljava/lang/String;[BJJ)V

    return-object v1
.end method

.method public static c(Lk0/u;)I
    .locals 3

    invoke-virtual {p0}, Lk0/u;->u()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lk0/u;->u()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static d(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static e(Lk0/u;)Ll0/e;
    .locals 11

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lk0/u;->G(I)V

    invoke-virtual {p0}, Lk0/u;->g()I

    move-result v0

    invoke-static {v0}, Lc1/d;->d(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lk0/u;->w()J

    move-result-wide v0

    invoke-virtual {p0}, Lk0/u;->w()J

    move-result-wide v2

    :goto_0
    move-wide v5, v0

    move-wide v7, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lk0/u;->o()J

    move-result-wide v0

    invoke-virtual {p0}, Lk0/u;->o()J

    move-result-wide v2

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lk0/u;->w()J

    move-result-wide v9

    new-instance v4, Ll0/e;

    invoke-direct/range {v4 .. v10}, Ll0/e;-><init>(JJJ)V

    return-object v4
.end method

.method public static f(Lk0/u;II)Landroid/util/Pair;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lk0/u;->b:I

    :goto_0
    sub-int v2, v1, p1

    move/from16 v4, p2

    if-ge v2, v4, :cond_10

    invoke-virtual {v0, v1}, Lk0/u;->G(I)V

    invoke-virtual {v0}, Lk0/u;->g()I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v2, :cond_0

    move v7, v6

    goto :goto_1

    :cond_0
    move v7, v5

    :goto_1
    const-string v8, "childAtomSize must be positive"

    invoke-static {v8, v7}, LI0/b;->c(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lk0/u;->g()I

    move-result v7

    const v8, 0x73696e66

    if-ne v7, v8, :cond_f

    add-int/lit8 v7, v1, 0x8

    const/4 v8, -0x1

    move v12, v5

    move v9, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_2
    sub-int v13, v7, v1

    const/4 v14, 0x4

    if-ge v13, v2, :cond_4

    invoke-virtual {v0, v7}, Lk0/u;->G(I)V

    invoke-virtual {v0}, Lk0/u;->g()I

    move-result v13

    invoke-virtual {v0}, Lk0/u;->g()I

    move-result v15

    const/16 v16, 0x0

    const v3, 0x66726d61

    if-ne v15, v3, :cond_1

    invoke-virtual {v0}, Lk0/u;->g()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_3

    :cond_1
    const v3, 0x7363686d

    if-ne v15, v3, :cond_2

    invoke-virtual {v0, v14}, Lk0/u;->H(I)V

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v14, v3}, Lk0/u;->s(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_2
    const v3, 0x73636869

    if-ne v15, v3, :cond_3

    move v9, v7

    move v12, v13

    :cond_3
    :goto_3
    add-int/2addr v7, v13

    goto :goto_2

    :cond_4
    const/16 v16, 0x0

    const-string v3, "cenc"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbc1"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cens"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbcs"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    move-object/from16 v3, v16

    goto/16 :goto_b

    :cond_6
    :goto_4
    if-eqz v10, :cond_7

    move v3, v6

    goto :goto_5

    :cond_7
    move v3, v5

    :goto_5
    const-string v7, "frma atom is mandatory"

    invoke-static {v7, v3}, LI0/b;->c(Ljava/lang/String;Z)V

    if-eq v9, v8, :cond_8

    move v3, v6

    goto :goto_6

    :cond_8
    move v3, v5

    :goto_6
    const-string v7, "schi atom is mandatory"

    invoke-static {v7, v3}, LI0/b;->c(Ljava/lang/String;Z)V

    add-int/lit8 v3, v9, 0x8

    :goto_7
    sub-int v7, v3, v9

    if-ge v7, v12, :cond_d

    invoke-virtual {v0, v3}, Lk0/u;->G(I)V

    invoke-virtual {v0}, Lk0/u;->g()I

    move-result v7

    invoke-virtual {v0}, Lk0/u;->g()I

    move-result v8

    const v13, 0x74656e63

    if-ne v8, v13, :cond_c

    invoke-virtual {v0}, Lk0/u;->g()I

    move-result v3

    invoke-static {v3}, Lc1/d;->d(I)I

    move-result v3

    invoke-virtual {v0, v6}, Lk0/u;->H(I)V

    if-nez v3, :cond_9

    invoke-virtual {v0, v6}, Lk0/u;->H(I)V

    move v14, v5

    move v15, v14

    goto :goto_8

    :cond_9
    invoke-virtual {v0}, Lk0/u;->u()I

    move-result v3

    and-int/lit16 v7, v3, 0xf0

    shr-int/2addr v7, v14

    and-int/lit8 v3, v3, 0xf

    move v15, v3

    move v14, v7

    :goto_8
    invoke-virtual {v0}, Lk0/u;->u()I

    move-result v3

    if-ne v3, v6, :cond_a

    move-object v3, v10

    move v10, v6

    goto :goto_9

    :cond_a
    move-object v3, v10

    move v10, v5

    :goto_9
    invoke-virtual {v0}, Lk0/u;->u()I

    move-result v12

    const/16 v7, 0x10

    new-array v13, v7, [B

    invoke-virtual {v0, v13, v5, v7}, Lk0/u;->e([BII)V

    if-eqz v10, :cond_b

    if-nez v12, :cond_b

    invoke-virtual {v0}, Lk0/u;->u()I

    move-result v7

    new-array v8, v7, [B

    invoke-virtual {v0, v8, v5, v7}, Lk0/u;->e([BII)V

    move-object/from16 v16, v8

    :cond_b
    new-instance v9, Lc1/r;

    move-object v8, v3

    invoke-direct/range {v9 .. v16}, Lc1/r;-><init>(ZLjava/lang/String;I[BII[B)V

    move-object v3, v9

    goto :goto_a

    :cond_c
    move-object v8, v10

    add-int/2addr v3, v7

    goto :goto_7

    :cond_d
    move-object v8, v10

    move-object/from16 v3, v16

    :goto_a
    if-eqz v3, :cond_e

    move v5, v6

    :cond_e
    const-string v6, "tenc atom is mandatory"

    invoke-static {v6, v5}, LI0/b;->c(Ljava/lang/String;Z)V

    sget v5, Lk0/C;->a:I

    invoke-static {v8, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    :goto_b
    if-eqz v3, :cond_f

    return-object v3

    :cond_f
    add-int/2addr v1, v2

    goto/16 :goto_0

    :cond_10
    const/16 v16, 0x0

    return-object v16
.end method

.method public static g(Lc1/q;Ll0/b;LI0/y;)Lc1/t;
    .locals 51

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v3, v1, Lc1/q;->g:Landroidx/media3/common/Format;

    const v4, 0x7374737a

    invoke-virtual {v0, v4}, Ll0/b;->l(I)Ll0/c;

    move-result-object v4

    const-string v5, "audio/raw"

    const-string v6, "BoxParsers"

    const/16 v7, 0xc

    if-eqz v4, :cond_3

    new-instance v10, LD5/A;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iget-object v4, v4, Ll0/c;->r:Lk0/u;

    iput-object v4, v10, LD5/A;->c:Ljava/lang/Object;

    invoke-virtual {v4, v7}, Lk0/u;->G(I)V

    invoke-virtual {v4}, Lk0/u;->y()I

    move-result v11

    iget-object v12, v3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    iget v12, v3, Landroidx/media3/common/Format;->pcmEncoding:I

    iget v13, v3, Landroidx/media3/common/Format;->channelCount:I

    invoke-static {v12, v13}, Lk0/C;->B(II)I

    move-result v12

    if-eqz v11, :cond_0

    rem-int v13, v11, v12

    if-eqz v13, :cond_1

    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Audio sample size mismatch. stsd sample size: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", stsz sample size: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    move v11, v12

    :cond_1
    if-nez v11, :cond_2

    const/4 v11, -0x1

    :cond_2
    iput v11, v10, LD5/A;->a:I

    invoke-virtual {v4}, Lk0/u;->y()I

    move-result v4

    iput v4, v10, LD5/A;->b:I

    goto :goto_0

    :cond_3
    const v4, 0x73747a32

    invoke-virtual {v0, v4}, Ll0/b;->l(I)Ll0/c;

    move-result-object v4

    if-eqz v4, :cond_39

    new-instance v10, Lc1/c;

    invoke-direct {v10, v4}, Lc1/c;-><init>(Ll0/c;)V

    :goto_0
    invoke-interface {v10}, Lc1/b;->b()I

    move-result v4

    const/4 v11, 0x0

    if-nez v4, :cond_4

    new-instance v0, Lc1/t;

    new-array v2, v11, [J

    new-array v3, v11, [I

    new-array v5, v11, [J

    new-array v6, v11, [I

    const-wide/16 v7, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v8}, Lc1/t;-><init>(Lc1/q;[J[II[J[IJ)V

    return-object v0

    :cond_4
    iget v12, v1, Lc1/q;->b:I

    const/4 v13, 0x2

    const-wide/16 v16, 0x0

    if-ne v12, v13, :cond_5

    iget-wide v14, v1, Lc1/q;->f:J

    cmp-long v12, v14, v16

    if-lez v12, :cond_5

    int-to-float v12, v4

    long-to-float v14, v14

    const v15, 0x49742400    # 1000000.0f

    div-float/2addr v14, v15

    div-float/2addr v12, v14

    invoke-virtual {v3}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroidx/media3/common/Format$Builder;->setFrameRate(F)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v29

    new-instance v18, Lc1/q;

    iget v3, v1, Lc1/q;->a:I

    iget v12, v1, Lc1/q;->b:I

    iget-wide v14, v1, Lc1/q;->c:J

    move/from16 v35, v11

    move/from16 v20, v12

    iget-wide v11, v1, Lc1/q;->d:J

    move-wide/from16 v21, v14

    iget-wide v13, v1, Lc1/q;->e:J

    iget-wide v8, v1, Lc1/q;->f:J

    iget v15, v1, Lc1/q;->h:I

    iget-object v7, v1, Lc1/q;->l:[Lc1/r;

    move/from16 v19, v3

    iget v3, v1, Lc1/q;->k:I

    move/from16 v32, v3

    iget-object v3, v1, Lc1/q;->i:[J

    iget-object v1, v1, Lc1/q;->j:[J

    move-object/from16 v34, v1

    move-object/from16 v33, v3

    move-object/from16 v31, v7

    move-wide/from16 v27, v8

    move-wide/from16 v23, v11

    move-wide/from16 v25, v13

    move/from16 v30, v15

    invoke-direct/range {v18 .. v34}, Lc1/q;-><init>(IIJJJJLandroidx/media3/common/Format;I[Lc1/r;I[J[J)V

    move-object/from16 v1, v18

    goto :goto_1

    :cond_5
    move/from16 v35, v11

    :goto_1
    iget-wide v7, v1, Lc1/q;->c:J

    iget v3, v1, Lc1/q;->b:I

    iget-object v9, v1, Lc1/q;->j:[J

    iget-object v11, v1, Lc1/q;->g:Landroidx/media3/common/Format;

    iget-object v12, v1, Lc1/q;->i:[J

    const v13, 0x7374636f

    invoke-virtual {v0, v13}, Ll0/b;->l(I)Ll0/c;

    move-result-object v13

    if-nez v13, :cond_6

    const v13, 0x636f3634

    invoke-virtual {v0, v13}, Ll0/b;->l(I)Ll0/c;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v15, 0x1

    goto :goto_2

    :cond_6
    move/from16 v15, v35

    :goto_2
    iget-object v13, v13, Ll0/c;->r:Lk0/u;

    const/16 p0, 0x1

    const v14, 0x73747363

    invoke-virtual {v0, v14}, Ll0/b;->l(I)Ll0/c;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v14, Ll0/c;->r:Lk0/u;

    move-object/from16 v18, v9

    const v9, 0x73747473

    invoke-virtual {v0, v9}, Ll0/b;->l(I)Ll0/c;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v9, Ll0/c;->r:Lk0/u;

    move-object/from16 v19, v10

    const v10, 0x73747373

    invoke-virtual {v0, v10}, Ll0/b;->l(I)Ll0/c;

    move-result-object v10

    if-eqz v10, :cond_7

    iget-object v10, v10, Ll0/c;->r:Lk0/u;

    goto :goto_3

    :cond_7
    const/4 v10, 0x0

    :goto_3
    const v2, 0x63747473

    invoke-virtual {v0, v2}, Ll0/b;->l(I)Ll0/c;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, v0, Ll0/c;->r:Lk0/u;

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    new-instance v2, Lc1/a;

    invoke-direct {v2, v14, v13, v15}, Lc1/a;-><init>(Lk0/u;Lk0/u;Z)V

    const/16 v13, 0xc

    invoke-virtual {v9, v13}, Lk0/u;->G(I)V

    invoke-virtual {v9}, Lk0/u;->y()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v9}, Lk0/u;->y()I

    move-result v15

    move-object/from16 v20, v9

    invoke-virtual/range {v20 .. v20}, Lk0/u;->y()I

    move-result v9

    if-eqz v0, :cond_9

    invoke-virtual {v0, v13}, Lk0/u;->G(I)V

    invoke-virtual {v0}, Lk0/u;->y()I

    move-result v21

    goto :goto_5

    :cond_9
    move/from16 v21, v35

    :goto_5
    if-eqz v10, :cond_b

    invoke-virtual {v10, v13}, Lk0/u;->G(I)V

    invoke-virtual {v10}, Lk0/u;->y()I

    move-result v13

    if-lez v13, :cond_a

    invoke-virtual {v10}, Lk0/u;->y()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move-object/from16 p1, v0

    goto :goto_7

    :cond_a
    move-object/from16 p1, v0

    const/4 v10, 0x0

    :goto_6
    const/16 v22, -0x1

    goto :goto_7

    :cond_b
    move-object/from16 p1, v0

    move/from16 v13, v35

    goto :goto_6

    :goto_7
    invoke-interface/range {v19 .. v19}, Lc1/b;->a()I

    move-result v0

    move-object/from16 v23, v10

    iget-object v10, v11, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    move/from16 v24, v13

    const/4 v13, -0x1

    if-eq v0, v13, :cond_11

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "audio/g711-mlaw"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "audio/g711-alaw"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    :cond_c
    if-nez v14, :cond_11

    if-nez v21, :cond_11

    if-nez v24, :cond_11

    iget v5, v2, Lc1/a;->a:I

    new-array v6, v5, [J

    new-array v10, v5, [I

    :goto_8
    invoke-virtual {v2}, Lc1/a;->a()Z

    move-result v13

    if-eqz v13, :cond_d

    iget v13, v2, Lc1/a;->b:I

    iget-wide v14, v2, Lc1/a;->d:J

    aput-wide v14, v6, v13

    iget v14, v2, Lc1/a;->c:I

    aput v14, v10, v13

    goto :goto_8

    :cond_d
    int-to-long v13, v9

    const/16 v2, 0x2000

    div-int/2addr v2, v0

    move/from16 v9, v35

    move v15, v9

    :goto_9
    if-ge v9, v5, :cond_e

    move/from16 v25, v0

    aget v0, v10, v9

    invoke-static {v0, v2}, Lk0/C;->f(II)I

    move-result v0

    add-int/2addr v15, v0

    add-int/lit8 v9, v9, 0x1

    move/from16 v0, v25

    goto :goto_9

    :cond_e
    move/from16 v25, v0

    new-array v0, v15, [J

    new-array v9, v15, [I

    move-object/from16 v19, v0

    new-array v0, v15, [J

    new-array v15, v15, [I

    move-object/from16 v20, v0

    move-object/from16 v21, v6

    move/from16 v0, v35

    move v6, v0

    move/from16 v22, v6

    move/from16 v23, v22

    :goto_a
    if-ge v0, v5, :cond_10

    aget v24, v10, v0

    aget-wide v26, v21, v0

    move/from16 v50, v23

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v22, v50

    move/from16 v50, v24

    move/from16 v24, v5

    move/from16 v5, v50

    :goto_b
    if-lez v5, :cond_f

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v28

    aput-wide v26, v19, v22

    move/from16 p1, v2

    mul-int v2, v25, v28

    aput v2, v9, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    move-object v2, v9

    move-object/from16 v29, v10

    int-to-long v9, v6

    mul-long/2addr v9, v13

    aput-wide v9, v20, v22

    aput p0, v15, v22

    aget v9, v2, v22

    int-to-long v9, v9

    add-long v26, v26, v9

    add-int v6, v6, v28

    sub-int v5, v5, v28

    add-int/lit8 v22, v22, 0x1

    move-object v9, v2

    move-object/from16 v10, v29

    move/from16 v2, p1

    goto :goto_b

    :cond_f
    move/from16 p1, v2

    move-object v2, v9

    move-object/from16 v29, v10

    add-int/lit8 v5, v23, 0x1

    move/from16 v23, v22

    move/from16 v2, p1

    move/from16 v22, v0

    move v0, v5

    move/from16 v5, v24

    goto :goto_a

    :cond_10
    move-object v2, v9

    int-to-long v5, v6

    mul-long/2addr v13, v5

    move/from16 v24, v3

    move-wide/from16 v26, v7

    move-object/from16 v25, v12

    move-object/from16 v21, v19

    move-object/from16 v0, v20

    move/from16 v23, v22

    move-object/from16 v22, v2

    move-object v2, v11

    :goto_c
    move-wide v5, v13

    goto/16 :goto_16

    :cond_11
    new-array v0, v4, [J

    new-array v5, v4, [I

    new-array v10, v4, [J

    new-array v13, v4, [I

    move/from16 v25, v24

    move/from16 v24, v3

    move/from16 v3, v22

    move/from16 v22, v21

    move-object/from16 v21, v11

    move v11, v15

    move v15, v14

    move/from16 v14, v25

    move-wide/from16 v26, v7

    move-object/from16 v25, v12

    move-wide/from16 v30, v16

    move-wide/from16 v32, v30

    move/from16 v7, v35

    move v8, v7

    move v12, v8

    move/from16 v28, v12

    move/from16 v29, v28

    :goto_d
    if-ge v12, v4, :cond_1b

    move-wide/from16 v33, v32

    move/from16 v32, v28

    move/from16 v28, p0

    :goto_e
    if-nez v32, :cond_12

    invoke-virtual {v2}, Lc1/a;->a()Z

    move-result v28

    if-eqz v28, :cond_12

    move/from16 v37, v14

    move/from16 v38, v15

    iget-wide v14, v2, Lc1/a;->d:J

    move/from16 v39, v4

    iget v4, v2, Lc1/a;->c:I

    move/from16 v32, v4

    move-wide/from16 v33, v14

    move/from16 v14, v37

    move/from16 v15, v38

    move/from16 v4, v39

    goto :goto_e

    :cond_12
    move/from16 v39, v4

    move/from16 v37, v14

    move/from16 v38, v15

    if-nez v28, :cond_13

    const-string v2, "Unexpected end of chunk data"

    invoke-static {v6, v2}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v12}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    invoke-static {v5, v12}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    invoke-static {v10, v12}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    invoke-static {v13, v12}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    move-object v9, v2

    move-object v15, v4

    move v4, v12

    move/from16 v2, v32

    goto/16 :goto_12

    :cond_13
    if-eqz p1, :cond_15

    :goto_f
    if-nez v29, :cond_14

    if-lez v22, :cond_14

    invoke-virtual/range {p1 .. p1}, Lk0/u;->y()I

    move-result v29

    invoke-virtual/range {p1 .. p1}, Lk0/u;->g()I

    move-result v7

    add-int/lit8 v22, v22, -0x1

    goto :goto_f

    :cond_14
    add-int/lit8 v29, v29, -0x1

    :cond_15
    aput-wide v33, v0, v12

    invoke-interface/range {v19 .. v19}, Lc1/b;->c()I

    move-result v4

    aput v4, v5, v12

    if-le v4, v8, :cond_16

    move v8, v4

    :cond_16
    int-to-long v14, v7

    add-long v14, v30, v14

    aput-wide v14, v10, v12

    if-nez v23, :cond_17

    move/from16 v4, p0

    goto :goto_10

    :cond_17
    move/from16 v4, v35

    :goto_10
    aput v4, v13, v12

    if-ne v12, v3, :cond_19

    aput p0, v13, v12

    add-int/lit8 v14, v37, -0x1

    if-lez v14, :cond_18

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v23 .. v23}, Lk0/u;->y()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :cond_18
    move-object v4, v2

    move v15, v3

    goto :goto_11

    :cond_19
    move-object v4, v2

    move v15, v3

    move/from16 v14, v37

    :goto_11
    int-to-long v2, v9

    add-long v30, v30, v2

    add-int/lit8 v11, v11, -0x1

    if-nez v11, :cond_1a

    if-lez v38, :cond_1a

    invoke-virtual/range {v20 .. v20}, Lk0/u;->y()I

    move-result v2

    invoke-virtual/range {v20 .. v20}, Lk0/u;->g()I

    move-result v3

    add-int/lit8 v9, v38, -0x1

    move v11, v2

    move/from16 v38, v9

    move v9, v3

    :cond_1a
    aget v2, v5, v12

    int-to-long v2, v2

    add-long v2, v33, v2

    add-int/lit8 v28, v32, -0x1

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v32, v2

    move-object v2, v4

    move v3, v15

    move/from16 v15, v38

    move/from16 v4, v39

    goto/16 :goto_d

    :cond_1b
    move/from16 v39, v4

    move/from16 v37, v14

    move/from16 v38, v15

    move-object v9, v5

    move-object v3, v10

    move-object v15, v13

    move/from16 v2, v28

    :goto_12
    int-to-long v12, v7

    add-long v13, v30, v12

    if-eqz p1, :cond_1d

    :goto_13
    if-lez v22, :cond_1d

    invoke-virtual/range {p1 .. p1}, Lk0/u;->y()I

    move-result v5

    if-eqz v5, :cond_1c

    move/from16 v5, v35

    goto :goto_14

    :cond_1c
    invoke-virtual/range {p1 .. p1}, Lk0/u;->g()I

    add-int/lit8 v22, v22, -0x1

    goto :goto_13

    :cond_1d
    move/from16 v5, p0

    :goto_14
    if-nez v37, :cond_1e

    if-nez v11, :cond_1e

    if-nez v2, :cond_1e

    if-nez v38, :cond_1e

    if-nez v29, :cond_1e

    if-nez v5, :cond_20

    :cond_1e
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "Inconsistent stbl box for track "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v1, Lc1/q;->a:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ": remainingSynchronizationSamples "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v37

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", remainingSamplesInChunk "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingTimestampDeltaChanges "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v38

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v29

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v5, :cond_1f

    const-string v2, ", ctts invalid"

    goto :goto_15

    :cond_1f
    const-string v2, ""

    :goto_15
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    move/from16 v23, v8

    move-object/from16 v22, v9

    move-object/from16 v2, v21

    move-object/from16 v21, v0

    move-object v0, v3

    goto/16 :goto_c

    :goto_16
    iget-wide v9, v1, Lc1/q;->c:J

    sget v3, Lk0/C;->a:I

    sget-object v34, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v7, 0xf4240

    move-object/from16 v11, v34

    invoke-static/range {v5 .. v11}, Lk0/C;->Y(JJJLjava/math/RoundingMode;)J

    move-result-wide v7

    if-nez v25, :cond_21

    move-wide/from16 v9, v26

    invoke-static {v0, v9, v10}, Lk0/C;->X([JJ)V

    new-instance v19, Lc1/t;

    move-object/from16 v24, v0

    move-object/from16 v20, v1

    move-wide/from16 v26, v7

    move-object/from16 v25, v15

    invoke-direct/range {v19 .. v27}, Lc1/t;-><init>(Lc1/q;[J[II[J[IJ)V

    return-object v19

    :cond_21
    move-object v3, v0

    move-object/from16 v0, v25

    move-wide/from16 v9, v26

    move-object/from16 v25, v15

    array-length v7, v0

    move/from16 v8, p0

    if-ne v7, v8, :cond_24

    move/from16 v7, v24

    if-ne v7, v8, :cond_25

    array-length v11, v3

    const/4 v12, 0x2

    if-lt v11, v12, :cond_25

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-wide v11, v18, v35

    aget-wide v28, v0, v35

    iget-wide v13, v1, Lc1/q;->c:J

    move/from16 p0, v8

    move-wide/from16 v26, v9

    iget-wide v8, v1, Lc1/q;->d:J

    move-wide/from16 v32, v8

    move-wide/from16 v30, v13

    invoke-static/range {v28 .. v34}, Lk0/C;->Y(JJJLjava/math/RoundingMode;)J

    move-result-wide v8

    add-long/2addr v8, v11

    array-length v10, v3

    add-int/lit8 v10, v10, -0x1

    const/4 v13, 0x4

    move/from16 v14, v35

    invoke-static {v13, v14, v10}, Lk0/C;->i(III)I

    move-result v15

    move/from16 p1, v13

    array-length v13, v3

    add-int/lit8 v13, v13, -0x4

    invoke-static {v13, v14, v10}, Lk0/C;->i(III)I

    move-result v10

    aget-wide v19, v3, v14

    cmp-long v13, v19, v11

    if-gtz v13, :cond_22

    aget-wide v13, v3, v15

    cmp-long v13, v11, v13

    if-gez v13, :cond_22

    aget-wide v13, v3, v10

    cmp-long v10, v13, v8

    if-gez v10, :cond_22

    cmp-long v10, v8, v5

    if-gtz v10, :cond_22

    const/4 v10, 0x1

    goto :goto_17

    :cond_22
    const/4 v10, 0x0

    :goto_17
    if-eqz v10, :cond_25

    sub-long v8, v5, v8

    sub-long v28, v11, v19

    iget v10, v2, Landroidx/media3/common/Format;->sampleRate:I

    int-to-long v10, v10

    iget-wide v12, v1, Lc1/q;->c:J

    move-wide/from16 v30, v10

    move-wide/from16 v32, v12

    invoke-static/range {v28 .. v34}, Lk0/C;->Y(JJJLjava/math/RoundingMode;)J

    move-result-wide v10

    iget v12, v2, Landroidx/media3/common/Format;->sampleRate:I

    int-to-long v12, v12

    iget-wide v14, v1, Lc1/q;->c:J

    move-wide/from16 v28, v8

    move-wide/from16 v30, v12

    move-wide/from16 v32, v14

    invoke-static/range {v28 .. v34}, Lk0/C;->Y(JJJLjava/math/RoundingMode;)J

    move-result-wide v8

    cmp-long v12, v10, v16

    if-nez v12, :cond_23

    cmp-long v12, v8, v16

    if-eqz v12, :cond_25

    :cond_23
    const-wide/32 v12, 0x7fffffff

    cmp-long v14, v10, v12

    if-gtz v14, :cond_25

    cmp-long v12, v8, v12

    if-gtz v12, :cond_25

    long-to-int v2, v10

    move-object/from16 v4, p2

    iput v2, v4, LI0/y;->a:I

    long-to-int v2, v8

    iput v2, v4, LI0/y;->b:I

    move-wide/from16 v9, v26

    invoke-static {v3, v9, v10}, Lk0/C;->X([JJ)V

    const/16 v35, 0x0

    aget-wide v28, v0, v35

    const-wide/32 v30, 0xf4240

    iget-wide v4, v1, Lc1/q;->d:J

    move-wide/from16 v32, v4

    invoke-static/range {v28 .. v34}, Lk0/C;->Y(JJJLjava/math/RoundingMode;)J

    move-result-wide v26

    new-instance v19, Lc1/t;

    move-object/from16 v20, v1

    move-object/from16 v24, v3

    invoke-direct/range {v19 .. v27}, Lc1/t;-><init>(Lc1/q;[J[II[J[IJ)V

    return-object v19

    :cond_24
    move/from16 v7, v24

    :cond_25
    array-length v8, v0

    const/4 v9, 0x1

    const/16 v35, 0x0

    if-ne v8, v9, :cond_27

    aget-wide v8, v0, v35

    cmp-long v8, v8, v16

    if-nez v8, :cond_27

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-wide v7, v18, v35

    move/from16 v11, v35

    :goto_18
    array-length v0, v3

    if-ge v11, v0, :cond_26

    aget-wide v9, v3, v11

    sub-long v12, v9, v7

    iget-wide v9, v1, Lc1/q;->c:J

    sget-object v18, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v14, 0xf4240

    move-wide/from16 v16, v9

    invoke-static/range {v12 .. v18}, Lk0/C;->Y(JJJLjava/math/RoundingMode;)J

    move-result-wide v9

    aput-wide v9, v3, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_18

    :cond_26
    sub-long v12, v5, v7

    iget-wide v4, v1, Lc1/q;->c:J

    sget-object v18, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v14, 0xf4240

    move-wide/from16 v16, v4

    invoke-static/range {v12 .. v18}, Lk0/C;->Y(JJJLjava/math/RoundingMode;)J

    move-result-wide v26

    new-instance v19, Lc1/t;

    move-object/from16 v20, v1

    move-object/from16 v24, v3

    invoke-direct/range {v19 .. v27}, Lc1/t;-><init>(Lc1/q;[J[II[J[IJ)V

    return-object v19

    :cond_27
    move-object v5, v3

    move-object/from16 v3, v21

    move-object/from16 v9, v22

    move-object/from16 v15, v25

    const/4 v8, 0x1

    if-ne v7, v8, :cond_28

    const/4 v8, 0x1

    goto :goto_19

    :cond_28
    move/from16 v8, v35

    :goto_19
    array-length v6, v0

    new-array v6, v6, [I

    array-length v10, v0

    new-array v10, v10, [I

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v21, v2

    move/from16 v11, v35

    move v12, v11

    move v13, v12

    move v14, v13

    :goto_1a
    array-length v2, v0

    if-ge v14, v2, :cond_2d

    move-object v2, v10

    move/from16 p1, v11

    aget-wide v10, v18, v14

    const-wide/16 v19, -0x1

    cmp-long v19, v10, v19

    if-eqz v19, :cond_2c

    aget-wide v24, v0, v14

    move/from16 v19, v14

    move-object/from16 p2, v15

    iget-wide v14, v1, Lc1/q;->c:J

    move-wide/from16 v26, v14

    iget-wide v14, v1, Lc1/q;->d:J

    sget-object v30, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v28, v14

    invoke-static/range {v24 .. v30}, Lk0/C;->Y(JJJLjava/math/RoundingMode;)J

    move-result-wide v14

    move-object/from16 v20, v2

    const/4 v2, 0x1

    invoke-static {v5, v10, v11, v2}, Lk0/C;->e([JJZ)I

    move-result v22

    aput v22, v6, v19

    :goto_1b
    aget v22, v6, v19

    if-ltz v22, :cond_29

    aget v24, p2, v22

    and-int/lit8 v24, v24, 0x1

    if-nez v24, :cond_29

    add-int/lit8 v22, v22, -0x1

    aput v22, v6, v19

    const/4 v2, 0x1

    goto :goto_1b

    :cond_29
    add-long/2addr v10, v14

    invoke-static {v5, v10, v11, v8}, Lk0/C;->a([JJZ)I

    move-result v2

    aput v2, v20, v19

    const/4 v2, 0x2

    if-ne v7, v2, :cond_2a

    :goto_1c
    aget v14, v20, v19

    array-length v15, v5

    const/16 v22, 0x1

    add-int/lit8 v15, v15, -0x1

    if-ge v14, v15, :cond_2a

    add-int/lit8 v14, v14, 0x1

    aget-wide v24, v5, v14

    cmp-long v15, v24, v10

    if-gtz v15, :cond_2a

    aput v14, v20, v19

    goto :goto_1c

    :cond_2a
    aget v10, v20, v19

    aget v11, v6, v19

    sub-int v14, v10, v11

    add-int/2addr v14, v12

    if-eq v13, v11, :cond_2b

    const/4 v11, 0x1

    goto :goto_1d

    :cond_2b
    move/from16 v11, v35

    :goto_1d
    or-int v11, p1, v11

    move v13, v10

    move v12, v14

    goto :goto_1e

    :cond_2c
    move-object/from16 v20, v2

    move/from16 v19, v14

    move-object/from16 p2, v15

    const/4 v2, 0x2

    move/from16 v11, p1

    :goto_1e
    add-int/lit8 v14, v19, 0x1

    move-object/from16 v15, p2

    move-object/from16 v10, v20

    goto :goto_1a

    :cond_2d
    move-object/from16 v20, v10

    move/from16 p1, v11

    move-object/from16 p2, v15

    if-eq v12, v4, :cond_2e

    const/4 v8, 0x1

    goto :goto_1f

    :cond_2e
    move/from16 v8, v35

    :goto_1f
    or-int v2, p1, v8

    if-eqz v2, :cond_2f

    new-array v4, v12, [J

    goto :goto_20

    :cond_2f
    move-object v4, v3

    :goto_20
    if-eqz v2, :cond_30

    new-array v7, v12, [I

    goto :goto_21

    :cond_30
    move-object v7, v9

    :goto_21
    if-eqz v2, :cond_31

    move/from16 v23, v35

    :cond_31
    if-eqz v2, :cond_32

    new-array v15, v12, [I

    goto :goto_22

    :cond_32
    move-object/from16 v15, p2

    :goto_22
    new-array v8, v12, [J

    move-wide/from16 v36, v16

    move/from16 v28, v23

    move/from16 v10, v35

    move v11, v10

    :goto_23
    array-length v12, v0

    if-ge v11, v12, :cond_37

    aget-wide v12, v18, v11

    aget v14, v6, v11

    move-object/from16 v25, v0

    aget v0, v20, v11

    move/from16 p1, v2

    if-eqz v2, :cond_33

    sub-int v2, v0, v14

    invoke-static {v3, v14, v4, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v9, v14, v7, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v19, v3

    move-object/from16 v3, p2

    invoke-static {v3, v14, v15, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_24

    :cond_33
    move-object/from16 v19, v3

    move-object/from16 v3, p2

    :goto_24
    move/from16 v2, v28

    :goto_25
    if-ge v14, v0, :cond_36

    move-object/from16 p2, v3

    move-object/from16 v26, v4

    iget-wide v3, v1, Lc1/q;->d:J

    sget-object v33, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v38, 0xf4240

    move-wide/from16 v40, v3

    move-object/from16 v42, v33

    invoke-static/range {v36 .. v42}, Lk0/C;->Y(JJJLjava/math/RoundingMode;)J

    move-result-wide v3

    aget-wide v22, v5, v14

    sub-long v27, v22, v12

    const-wide/32 v29, 0xf4240

    move-wide/from16 v22, v3

    iget-wide v3, v1, Lc1/q;->c:J

    move-wide/from16 v31, v3

    invoke-static/range {v27 .. v33}, Lk0/C;->Y(JJJLjava/math/RoundingMode;)J

    move-result-wide v3

    cmp-long v24, v3, v16

    if-gez v24, :cond_34

    const/16 v35, 0x1

    :cond_34
    add-long v3, v22, v3

    aput-wide v3, v8, v10

    if-eqz p1, :cond_35

    aget v3, v7, v10

    if-le v3, v2, :cond_35

    aget v2, v9, v14

    :cond_35
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, p2

    move-object/from16 v4, v26

    goto :goto_25

    :cond_36
    move-object/from16 p2, v3

    move-object/from16 v26, v4

    aget-wide v3, v25, v11

    add-long v36, v36, v3

    add-int/lit8 v11, v11, 0x1

    move/from16 v28, v2

    move-object/from16 v3, v19

    move-object/from16 v0, v25

    move-object/from16 v4, v26

    move/from16 v2, p1

    goto :goto_23

    :cond_37
    move-object/from16 v26, v4

    iget-wide v2, v1, Lc1/q;->d:J

    sget-object v42, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v38, 0xf4240

    move-wide/from16 v40, v2

    invoke-static/range {v36 .. v42}, Lk0/C;->Y(JJJLjava/math/RoundingMode;)J

    move-result-wide v31

    if-eqz v35, :cond_38

    invoke-virtual/range {v21 .. v21}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/media3/common/Format$Builder;->setHasPrerollSamples(Z)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v44

    new-instance v33, Lc1/q;

    iget v0, v1, Lc1/q;->a:I

    iget v2, v1, Lc1/q;->b:I

    iget-wide v3, v1, Lc1/q;->c:J

    iget-wide v5, v1, Lc1/q;->d:J

    iget-wide v9, v1, Lc1/q;->e:J

    iget-wide v11, v1, Lc1/q;->f:J

    iget v13, v1, Lc1/q;->h:I

    iget-object v14, v1, Lc1/q;->l:[Lc1/r;

    move/from16 v34, v0

    iget v0, v1, Lc1/q;->k:I

    move/from16 v47, v0

    iget-object v0, v1, Lc1/q;->i:[J

    iget-object v1, v1, Lc1/q;->j:[J

    move-object/from16 v48, v0

    move-object/from16 v49, v1

    move/from16 v35, v2

    move-wide/from16 v36, v3

    move-wide/from16 v38, v5

    move-wide/from16 v40, v9

    move-wide/from16 v42, v11

    move/from16 v45, v13

    move-object/from16 v46, v14

    invoke-direct/range {v33 .. v49}, Lc1/q;-><init>(IIJJJJLandroidx/media3/common/Format;I[Lc1/r;I[J[J)V

    move-object/from16 v25, v33

    goto :goto_26

    :cond_38
    move-object/from16 v25, v1

    :goto_26
    new-instance v24, Lc1/t;

    move-object/from16 v27, v7

    move-object/from16 v29, v8

    move-object/from16 v30, v15

    invoke-direct/range {v24 .. v32}, Lc1/t;-><init>(Lc1/q;[J[II[J[IJ)V

    return-object v24

    :cond_39
    const-string v0, "Track has no sample table size information"

    const/4 v15, 0x0

    invoke-static {v0, v15}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method

.method public static h(Ll0/b;LI0/y;JLandroidx/media3/common/DrmInitData;ZZLo3/d;)Ljava/util/ArrayList;
    .locals 74

    move-object/from16 v0, p0

    move-object/from16 v7, p4

    iget-object v10, v0, Ll0/b;->t:Ljava/util/ArrayList;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    :goto_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v13, v1, :cond_bd

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ll0/b;

    iget v1, v14, LU2/e;->q:I

    const v2, 0x7472616b

    if-eq v1, v2, :cond_0

    move-object/from16 v3, p1

    move-object/from16 v0, p7

    move-object/from16 v68, v10

    move-object v2, v11

    move/from16 v72, v13

    const/4 v12, 0x0

    goto/16 :goto_84

    :cond_0
    const v1, 0x6d766864

    invoke-virtual {v0, v1}, Ll0/b;->l(I)Ll0/c;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v15, 0x6d646961

    invoke-virtual {v14, v15}, Ll0/b;->k(I)Ll0/b;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x68646c72    # 4.3148E24f

    invoke-virtual {v2, v3}, Ll0/b;->l(I)Ll0/c;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Ll0/c;->r:Lk0/u;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lk0/u;->G(I)V

    invoke-virtual {v3}, Lk0/u;->g()I

    move-result v3

    const v5, 0x736f756e

    const/4 v15, -0x1

    if-ne v3, v5, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const v5, 0x76696465

    if-ne v3, v5, :cond_2

    const/4 v3, 0x2

    goto :goto_2

    :cond_2
    const v5, 0x74657874

    if-eq v3, v5, :cond_5

    const v5, 0x7362746c

    if-eq v3, v5, :cond_5

    const v5, 0x73756274

    if-eq v3, v5, :cond_5

    const v5, 0x636c6370

    if-ne v3, v5, :cond_3

    goto :goto_1

    :cond_3
    const v5, 0x6d657461

    if-ne v3, v5, :cond_4

    const/4 v3, 0x5

    goto :goto_2

    :cond_4
    move v3, v15

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v3, 0x3

    :goto_2
    if-ne v3, v15, :cond_6

    move-object/from16 v0, p7

    move-object/from16 v68, v10

    move-object/from16 v41, v11

    move/from16 v72, v13

    move-object v1, v14

    const/4 v9, 0x0

    const v11, 0x7374626c

    const/4 v12, 0x0

    const v13, 0x6d696e66

    goto/16 :goto_83

    :cond_6
    const v9, 0x746b6864

    invoke-virtual {v14, v9}, Ll0/b;->l(I)Ll0/c;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v9, Ll0/c;->r:Lk0/u;

    const/16 v6, 0x8

    invoke-virtual {v9, v6}, Lk0/u;->G(I)V

    invoke-virtual {v9}, Lk0/u;->g()I

    move-result v20

    invoke-static/range {v20 .. v20}, Lc1/d;->d(I)I

    move-result v20

    if-nez v20, :cond_7

    move v12, v6

    goto :goto_3

    :cond_7
    move v12, v4

    :goto_3
    invoke-virtual {v9, v12}, Lk0/u;->H(I)V

    invoke-virtual {v9}, Lk0/u;->g()I

    move-result v12

    const/4 v6, 0x4

    invoke-virtual {v9, v6}, Lk0/u;->H(I)V

    iget v5, v9, Lk0/u;->b:I

    if-nez v20, :cond_8

    move v8, v6

    goto :goto_4

    :cond_8
    const/16 v8, 0x8

    :goto_4
    const/4 v6, 0x0

    :goto_5
    const-wide/16 v25, 0x0

    const-wide v27, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v6, v8, :cond_c

    iget-object v4, v9, Lk0/u;->a:[B

    add-int v30, v5, v6

    aget-byte v4, v4, v30

    if-eq v4, v15, :cond_b

    if-nez v20, :cond_9

    invoke-virtual {v9}, Lk0/u;->w()J

    move-result-wide v4

    goto :goto_6

    :cond_9
    invoke-virtual {v9}, Lk0/u;->z()J

    move-result-wide v4

    :goto_6
    cmp-long v6, v4, v25

    if-nez v6, :cond_a

    :goto_7
    move-wide/from16 v4, v27

    :cond_a
    const/16 v6, 0x10

    goto :goto_8

    :cond_b
    add-int/lit8 v6, v6, 0x1

    const/16 v4, 0x10

    goto :goto_5

    :cond_c
    invoke-virtual {v9, v8}, Lk0/u;->H(I)V

    goto :goto_7

    :goto_8
    invoke-virtual {v9, v6}, Lk0/u;->H(I)V

    invoke-virtual {v9}, Lk0/u;->g()I

    move-result v6

    invoke-virtual {v9}, Lk0/u;->g()I

    move-result v8

    const/4 v15, 0x4

    invoke-virtual {v9, v15}, Lk0/u;->H(I)V

    invoke-virtual {v9}, Lk0/u;->g()I

    move-result v15

    invoke-virtual {v9}, Lk0/u;->g()I

    move-result v9

    const/high16 v0, 0x10000

    if-nez v6, :cond_d

    if-ne v8, v0, :cond_d

    const/high16 v0, -0x10000

    if-ne v15, v0, :cond_e

    if-nez v9, :cond_e

    const/16 v0, 0x5a

    :goto_9
    move v6, v0

    goto :goto_a

    :cond_d
    const/high16 v0, -0x10000

    :cond_e
    if-nez v6, :cond_10

    if-ne v8, v0, :cond_10

    const/high16 v0, 0x10000

    if-ne v15, v0, :cond_f

    if-nez v9, :cond_f

    const/16 v0, 0x10e

    goto :goto_9

    :cond_f
    const/high16 v0, -0x10000

    :cond_10
    if-ne v6, v0, :cond_11

    if-nez v8, :cond_11

    if-nez v15, :cond_11

    if-ne v9, v0, :cond_11

    const/16 v0, 0xb4

    goto :goto_9

    :cond_11
    const/4 v6, 0x0

    :goto_a
    cmp-long v0, p2, v27

    if-nez v0, :cond_12

    move-wide/from16 v34, v4

    goto :goto_b

    :cond_12
    move-wide/from16 v34, p2

    :goto_b
    iget-object v0, v1, Ll0/c;->r:Lk0/u;

    invoke-static {v0}, Lc1/d;->e(Lk0/u;)Ll0/e;

    move-result-object v0

    iget-wide v0, v0, Ll0/e;->r:J

    cmp-long v4, v34, v27

    if-nez v4, :cond_13

    move-wide/from16 v38, v0

    move-wide/from16 v30, v27

    :goto_c
    const v0, 0x6d696e66

    goto :goto_d

    :cond_13
    sget v4, Lk0/C;->a:I

    sget-object v40, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v36, 0xf4240

    move-wide/from16 v38, v0

    invoke-static/range {v34 .. v40}, Lk0/C;->Y(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    move-wide/from16 v30, v0

    goto :goto_c

    :goto_d
    invoke-virtual {v2, v0}, Ll0/b;->k(I)Ll0/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x7374626c

    invoke-virtual {v1, v4}, Ll0/b;->k(I)Ll0/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v5, 0x6d646864

    invoke-virtual {v2, v5}, Ll0/b;->l(I)Ll0/c;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Ll0/c;->r:Lk0/u;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Lk0/u;->G(I)V

    invoke-virtual {v2}, Lk0/u;->g()I

    move-result v5

    invoke-static {v5}, Lc1/d;->d(I)I

    move-result v5

    if-nez v5, :cond_14

    const/16 v8, 0x8

    goto :goto_e

    :cond_14
    const/16 v8, 0x10

    :goto_e
    invoke-virtual {v2, v8}, Lk0/u;->H(I)V

    invoke-virtual {v2}, Lk0/u;->w()J

    move-result-wide v44

    iget v8, v2, Lk0/u;->b:I

    if-nez v5, :cond_15

    const/4 v9, 0x4

    goto :goto_f

    :cond_15
    const/16 v9, 0x8

    :goto_f
    const/4 v15, 0x0

    :goto_10
    if-ge v15, v9, :cond_19

    iget-object v0, v2, Lk0/u;->a:[B

    add-int v22, v8, v15

    aget-byte v0, v0, v22

    const/4 v4, -0x1

    if-eq v0, v4, :cond_18

    if-nez v5, :cond_16

    invoke-virtual {v2}, Lk0/u;->w()J

    move-result-wide v4

    :goto_11
    move-wide/from16 v40, v4

    goto :goto_12

    :cond_16
    invoke-virtual {v2}, Lk0/u;->z()J

    move-result-wide v4

    goto :goto_11

    :goto_12
    cmp-long v0, v40, v25

    if-nez v0, :cond_17

    goto :goto_13

    :cond_17
    sget v0, Lk0/C;->a:I

    sget-object v46, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v42, 0xf4240

    invoke-static/range {v40 .. v46}, Lk0/C;->Y(JJJLjava/math/RoundingMode;)J

    move-result-wide v27

    goto :goto_13

    :cond_18
    add-int/lit8 v15, v15, 0x1

    const v0, 0x6d696e66

    const v4, 0x7374626c

    goto :goto_10

    :cond_19
    invoke-virtual {v2, v9}, Lk0/u;->H(I)V

    :goto_13
    invoke-virtual {v2}, Lk0/u;->A()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    shr-int/lit8 v4, v0, 0xa

    const/16 v15, 0x1f

    and-int/2addr v4, v15

    add-int/lit8 v4, v4, 0x60

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v4, v0, 0x5

    and-int/2addr v4, v15

    add-int/lit8 v4, v4, 0x60

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/2addr v0, v15

    add-int/lit8 v0, v0, 0x60

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, 0x73747364

    invoke-virtual {v1, v2}, Ll0/b;->l(I)Ll0/c;

    move-result-object v1

    if-eqz v1, :cond_bc

    iget-object v1, v1, Ll0/c;->r:Lk0/u;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lk0/u;->G(I)V

    invoke-virtual {v1}, Lk0/u;->g()I

    move-result v4

    new-instance v8, LB4/p;

    invoke-direct {v8, v4}, LB4/p;-><init>(I)V

    iget-object v5, v8, LB4/p;->s:Ljava/lang/Object;

    move-object/from16 v32, v5

    check-cast v32, [Lc1/r;

    const/4 v9, 0x0

    :goto_14
    if-ge v9, v4, :cond_b7

    move v5, v3

    iget v3, v1, Lk0/u;->b:I

    move/from16 v34, v4

    invoke-virtual {v1}, Lk0/u;->g()I

    move-result v4

    if-lez v4, :cond_1a

    const/4 v2, 0x1

    goto :goto_15

    :cond_1a
    const/4 v2, 0x0

    :goto_15
    const-string v15, "childAtomSize must be positive"

    invoke-static {v15, v2}, LI0/b;->c(Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lk0/u;->g()I

    move-result v2

    move/from16 v37, v5

    const v5, 0x61766331

    if-eq v2, v5, :cond_b6

    const v5, 0x61766333

    if-eq v2, v5, :cond_b6

    const v5, 0x656e6376

    if-eq v2, v5, :cond_b6

    const v5, 0x6d317620

    if-eq v2, v5, :cond_b6

    const v5, 0x6d703476

    if-eq v2, v5, :cond_b6

    const v5, 0x68766331

    if-eq v2, v5, :cond_b6

    const v5, 0x68657631

    if-eq v2, v5, :cond_b6

    const v5, 0x73323633

    if-eq v2, v5, :cond_b6

    const v5, 0x48323633

    if-eq v2, v5, :cond_b6

    const v5, 0x68323633

    if-eq v2, v5, :cond_b6

    const v5, 0x76703038

    if-eq v2, v5, :cond_b6

    const v5, 0x76703039

    if-eq v2, v5, :cond_b6

    const v5, 0x61763031

    if-eq v2, v5, :cond_b6

    const v5, 0x64766176

    if-eq v2, v5, :cond_b6

    const v5, 0x64766131

    if-eq v2, v5, :cond_b6

    const v5, 0x64766865

    if-eq v2, v5, :cond_b6

    const v5, 0x64766831

    if-ne v2, v5, :cond_1b

    move-object/from16 v68, v10

    move-object/from16 v41, v11

    move v5, v12

    move/from16 v72, v13

    move-object/from16 v42, v14

    move/from16 v18, v37

    const/4 v10, 0x0

    const v11, 0x7374626c

    const/4 v12, 0x0

    const v13, 0x6d696e66

    const/16 v16, 0x3

    const/16 v17, 0x2

    :goto_16
    const/16 v19, 0x1

    const/16 v21, 0x8

    const/16 v24, 0x4

    const/16 v29, 0x10

    const/16 v35, 0xc

    goto/16 :goto_80

    :cond_1b
    const v5, 0x656e6361

    move/from16 v63, v6

    const v6, 0x6d703461

    if-eq v2, v6, :cond_1c

    if-eq v2, v5, :cond_1c

    const v6, 0x61632d33

    if-eq v2, v6, :cond_1c

    const v6, 0x65632d33

    if-eq v2, v6, :cond_1c

    const v6, 0x61632d34

    if-eq v2, v6, :cond_1c

    const v6, 0x6d6c7061

    if-eq v2, v6, :cond_1c

    const v6, 0x64747363

    if-eq v2, v6, :cond_1c

    const v6, 0x64747365

    if-eq v2, v6, :cond_1c

    const v6, 0x64747368

    if-eq v2, v6, :cond_1c

    const v6, 0x6474736c

    if-eq v2, v6, :cond_1c

    const v6, 0x64747378

    if-eq v2, v6, :cond_1c

    const v6, 0x73616d72

    if-eq v2, v6, :cond_1c

    const v6, 0x73617762

    if-eq v2, v6, :cond_1c

    const v6, 0x6c70636d

    if-eq v2, v6, :cond_1c

    const v6, 0x736f7774

    if-eq v2, v6, :cond_1c

    const v6, 0x74776f73

    if-eq v2, v6, :cond_1c

    const v6, 0x2e6d7032

    if-eq v2, v6, :cond_1c

    const v6, 0x2e6d7033

    if-eq v2, v6, :cond_1c

    const v6, 0x6d686131

    if-eq v2, v6, :cond_1c

    const v6, 0x6d686d31

    if-eq v2, v6, :cond_1c

    const v6, 0x616c6163

    if-eq v2, v6, :cond_1c

    const v6, 0x616c6177

    if-eq v2, v6, :cond_1c

    const v6, 0x756c6177

    if-eq v2, v6, :cond_1c

    const v6, 0x4f707573

    if-eq v2, v6, :cond_1c

    const v6, 0x664c6143

    if-eq v2, v6, :cond_1c

    const v6, 0x69616d66

    if-ne v2, v6, :cond_1d

    :cond_1c
    move/from16 v40, v9

    goto/16 :goto_1e

    :cond_1d
    const v15, 0x77767474

    const v5, 0x74783367

    const v6, 0x54544d4c

    if-eq v2, v6, :cond_21

    if-eq v2, v5, :cond_21

    if-eq v2, v15, :cond_21

    const v15, 0x73747070

    if-eq v2, v15, :cond_21

    const v15, 0x63363038

    if-ne v2, v15, :cond_1e

    goto :goto_1a

    :cond_1e
    const v5, 0x6d657474

    if-ne v2, v5, :cond_20

    add-int/lit8 v6, v3, 0x10

    invoke-virtual {v1, v6}, Lk0/u;->G(I)V

    if-ne v2, v5, :cond_1f

    invoke-virtual {v1}, Lk0/u;->p()Ljava/lang/String;

    invoke-virtual {v1}, Lk0/u;->p()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1f

    new-instance v5, Landroidx/media3/common/Format$Builder;

    invoke-direct {v5}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v5, v12}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v2

    iput-object v2, v8, LB4/p;->t:Ljava/lang/Object;

    :cond_1f
    :goto_17
    move/from16 v48, v4

    move-object/from16 v68, v10

    move-object/from16 v41, v11

    move v5, v12

    move/from16 v72, v13

    move-object/from16 v42, v14

    move/from16 v18, v37

    :goto_18
    const/4 v10, 0x0

    const v11, 0x7374626c

    const/4 v12, 0x0

    const v13, 0x6d696e66

    const/16 v16, 0x3

    const/16 v17, 0x2

    const/16 v19, 0x1

    :goto_19
    const/16 v21, 0x8

    const/16 v24, 0x4

    const/16 v29, 0x10

    const/16 v35, 0xc

    goto/16 :goto_81

    :cond_20
    const v5, 0x63616d6d

    if-ne v2, v5, :cond_1f

    new-instance v2, Landroidx/media3/common/Format$Builder;

    invoke-direct {v2}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v2, v12}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    const-string v5, "application/x-camera-motion"

    invoke-virtual {v2, v5}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v2

    iput-object v2, v8, LB4/p;->t:Ljava/lang/Object;

    goto :goto_17

    :cond_21
    :goto_1a
    add-int/lit8 v15, v3, 0x10

    invoke-virtual {v1, v15}, Lk0/u;->G(I)V

    const-string v15, "application/ttml+xml"

    const-wide v46, 0x7fffffffffffffffL

    if-ne v2, v6, :cond_22

    :goto_1b
    move/from16 v40, v9

    move-wide/from16 v5, v46

    :goto_1c
    const/4 v2, 0x0

    goto :goto_1d

    :cond_22
    if-ne v2, v5, :cond_23

    add-int/lit8 v2, v4, -0x10

    new-array v5, v2, [B

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, v2}, Lk0/u;->e([BII)V

    invoke-static {v5}, Lp3/H;->n(Ljava/lang/Object;)Lp3/Y;

    move-result-object v2

    const-string v15, "application/x-quicktime-tx3g"

    move/from16 v40, v9

    move-wide/from16 v5, v46

    goto :goto_1d

    :cond_23
    const v5, 0x77767474

    if-ne v2, v5, :cond_24

    const-string v15, "application/x-mp4-vtt"

    goto :goto_1b

    :cond_24
    const v5, 0x73747070

    if-ne v2, v5, :cond_25

    move/from16 v40, v9

    move-wide/from16 v5, v25

    goto :goto_1c

    :cond_25
    const v15, 0x63363038

    if-ne v2, v15, :cond_26

    const/4 v2, 0x1

    iput v2, v8, LB4/p;->r:I

    const-string v15, "application/x-mp4-cea-608"

    goto :goto_1b

    :goto_1d
    new-instance v9, Landroidx/media3/common/Format$Builder;

    invoke-direct {v9}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v9, v12}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object v9

    invoke-virtual {v9, v15}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Landroidx/media3/common/Format$Builder;->setSubsampleOffsetUs(J)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v2

    iput-object v2, v8, LB4/p;->t:Ljava/lang/Object;

    move/from16 v48, v4

    move-object/from16 v68, v10

    move-object/from16 v41, v11

    move v5, v12

    move/from16 v72, v13

    move-object/from16 v42, v14

    move/from16 v18, v37

    move/from16 v9, v40

    goto/16 :goto_18

    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :goto_1e
    add-int/lit8 v6, v3, 0x10

    invoke-virtual {v1, v6}, Lk0/u;->G(I)V

    const/4 v6, 0x6

    if-eqz p6, :cond_27

    invoke-virtual {v1}, Lk0/u;->A()I

    move-result v9

    invoke-virtual {v1, v6}, Lk0/u;->H(I)V

    goto :goto_1f

    :cond_27
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Lk0/u;->H(I)V

    const/4 v9, 0x0

    :goto_1f
    const/16 v64, 0x15

    const/high16 v66, 0x10000000

    if-eqz v9, :cond_34

    const/4 v6, 0x1

    if-ne v9, v6, :cond_28

    goto/16 :goto_26

    :cond_28
    const/4 v6, 0x2

    if-ne v9, v6, :cond_33

    const/16 v6, 0x10

    invoke-virtual {v1, v6}, Lk0/u;->H(I)V

    invoke-virtual {v1}, Lk0/u;->o()J

    move-result-wide v67

    invoke-static/range {v67 .. v68}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v67

    invoke-static/range {v67 .. v68}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v1}, Lk0/u;->y()I

    move-result v6

    const/4 v9, 0x4

    invoke-virtual {v1, v9}, Lk0/u;->H(I)V

    invoke-virtual {v1}, Lk0/u;->y()I

    move-result v9

    invoke-virtual {v1}, Lk0/u;->y()I

    move-result v67

    and-int/lit8 v68, v67, 0x1

    if-eqz v68, :cond_29

    const/16 v68, 0x1

    goto :goto_20

    :cond_29
    const/16 v68, 0x0

    :goto_20
    and-int/lit8 v67, v67, 0x2

    if-eqz v67, :cond_2a

    const/16 v67, 0x1

    :goto_21
    move/from16 v69, v5

    goto :goto_22

    :cond_2a
    const/16 v67, 0x0

    goto :goto_21

    :goto_22
    if-nez v68, :cond_31

    const/16 v5, 0x8

    if-ne v9, v5, :cond_2b

    move v9, v5

    const/4 v5, 0x3

    goto :goto_24

    :cond_2b
    const/16 v5, 0x10

    if-ne v9, v5, :cond_2d

    if-eqz v67, :cond_2c

    move/from16 v5, v66

    goto :goto_23

    :cond_2c
    const/4 v5, 0x2

    :goto_23
    const/16 v9, 0x8

    goto :goto_24

    :cond_2d
    const/16 v5, 0x18

    if-ne v9, v5, :cond_2f

    if-eqz v67, :cond_2e

    const/high16 v5, 0x50000000

    goto :goto_23

    :cond_2e
    move/from16 v5, v64

    goto :goto_23

    :cond_2f
    const/16 v5, 0x20

    if-ne v9, v5, :cond_32

    if-eqz v67, :cond_30

    const/high16 v5, 0x60000000

    goto :goto_23

    :cond_30
    const/16 v5, 0x16

    goto :goto_23

    :cond_31
    const/16 v5, 0x20

    if-ne v9, v5, :cond_32

    const/4 v5, 0x4

    goto :goto_23

    :cond_32
    const/4 v5, -0x1

    goto :goto_23

    :goto_24
    invoke-virtual {v1, v9}, Lk0/u;->H(I)V

    move/from16 v67, v6

    const/4 v6, 0x0

    :goto_25
    const v9, 0x69616d66

    goto :goto_27

    :cond_33
    move-object/from16 v71, v1

    move/from16 v65, v3

    move/from16 v48, v4

    move/from16 v17, v6

    move-object/from16 v68, v10

    move-object/from16 v41, v11

    move v5, v12

    move/from16 v72, v13

    move-object/from16 v42, v14

    const/4 v4, 0x1

    const/4 v12, 0x0

    const/16 v16, 0x3

    goto/16 :goto_7f

    :cond_34
    :goto_26
    invoke-virtual {v1}, Lk0/u;->A()I

    move-result v5

    const/4 v6, 0x6

    invoke-virtual {v1, v6}, Lk0/u;->H(I)V

    invoke-virtual {v1}, Lk0/u;->v()I

    move-result v6

    move/from16 v67, v5

    iget v5, v1, Lk0/u;->b:I

    const/16 v24, 0x4

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v1, v5}, Lk0/u;->G(I)V

    invoke-virtual {v1}, Lk0/u;->g()I

    move-result v5

    move/from16 v68, v5

    const/4 v5, 0x1

    if-ne v9, v5, :cond_35

    const/16 v5, 0x10

    invoke-virtual {v1, v5}, Lk0/u;->H(I)V

    :cond_35
    move/from16 v69, v6

    move/from16 v6, v68

    const/4 v5, -0x1

    goto :goto_25

    :goto_27
    if-ne v2, v9, :cond_36

    const/16 v67, -0x1

    const/16 v69, -0x1

    :cond_36
    iget v9, v1, Lk0/u;->b:I

    move-object/from16 v68, v10

    const v10, 0x656e6361

    if-ne v2, v10, :cond_39

    invoke-static {v1, v3, v4}, Lc1/d;->f(Lk0/u;II)Landroid/util/Pair;

    move-result-object v10

    if-eqz v10, :cond_38

    iget-object v2, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v7, :cond_37

    move/from16 v65, v2

    const/4 v2, 0x0

    goto :goto_28

    :cond_37
    move/from16 v65, v2

    iget-object v2, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lc1/r;

    iget-object v2, v2, Lc1/r;->b:Ljava/lang/String;

    invoke-virtual {v7, v2}, Landroidx/media3/common/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Landroidx/media3/common/DrmInitData;

    move-result-object v2

    :goto_28
    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Lc1/r;

    aput-object v10, v32, v40

    move-object v10, v2

    move/from16 v2, v65

    goto :goto_29

    :cond_38
    move-object v10, v7

    :goto_29
    invoke-virtual {v1, v9}, Lk0/u;->G(I)V

    :goto_2a
    move/from16 v65, v3

    goto :goto_2b

    :cond_39
    move-object v10, v7

    goto :goto_2a

    :goto_2b
    const-string v3, "audio/mhm1"

    const-string v7, "audio/ac4"

    const-string v70, "audio/eac3"

    move/from16 v71, v9

    const-string v9, "audio/ac3"

    move/from16 v72, v13

    const v13, 0x61632d33

    if-ne v2, v13, :cond_3a

    move-object v2, v9

    goto/16 :goto_2f

    :cond_3a
    const v13, 0x65632d33

    if-ne v2, v13, :cond_3b

    move-object/from16 v2, v70

    goto/16 :goto_2f

    :cond_3b
    const v13, 0x61632d34

    if-ne v2, v13, :cond_3c

    move-object v2, v7

    goto/16 :goto_2f

    :cond_3c
    const v13, 0x64747363

    if-ne v2, v13, :cond_3d

    const-string v2, "audio/vnd.dts"

    goto/16 :goto_2f

    :cond_3d
    const v13, 0x64747368

    if-eq v2, v13, :cond_52

    const v13, 0x6474736c

    if-ne v2, v13, :cond_3e

    goto/16 :goto_2e

    :cond_3e
    const v13, 0x64747365

    if-ne v2, v13, :cond_3f

    const-string v2, "audio/vnd.dts.hd;profile=lbr"

    goto/16 :goto_2f

    :cond_3f
    const v13, 0x64747378

    if-ne v2, v13, :cond_40

    const-string v2, "audio/vnd.dts.uhd;profile=p2"

    goto/16 :goto_2f

    :cond_40
    const v13, 0x73616d72

    if-ne v2, v13, :cond_41

    const-string v2, "audio/3gpp"

    goto/16 :goto_2f

    :cond_41
    const v13, 0x73617762

    if-ne v2, v13, :cond_42

    const-string v2, "audio/amr-wb"

    goto/16 :goto_2f

    :cond_42
    const-string v13, "audio/raw"

    move-object/from16 v55, v13

    const v13, 0x736f7774

    if-ne v2, v13, :cond_43

    :goto_2c
    move-object/from16 v2, v55

    const/4 v5, 0x2

    goto/16 :goto_2f

    :cond_43
    const v13, 0x74776f73

    if-ne v2, v13, :cond_44

    move-object/from16 v2, v55

    move/from16 v5, v66

    goto/16 :goto_2f

    :cond_44
    const v13, 0x6c70636d

    if-ne v2, v13, :cond_46

    const/4 v13, -0x1

    if-ne v5, v13, :cond_45

    goto :goto_2c

    :cond_45
    move-object/from16 v2, v55

    goto/16 :goto_2f

    :cond_46
    const v13, 0x2e6d7032

    if-eq v2, v13, :cond_51

    const v13, 0x2e6d7033

    if-ne v2, v13, :cond_47

    goto :goto_2d

    :cond_47
    const v13, 0x6d686131

    if-ne v2, v13, :cond_48

    const-string v2, "audio/mha1"

    goto :goto_2f

    :cond_48
    const v13, 0x6d686d31

    if-ne v2, v13, :cond_49

    move-object v2, v3

    goto :goto_2f

    :cond_49
    const v13, 0x616c6163

    if-ne v2, v13, :cond_4a

    const-string v2, "audio/alac"

    goto :goto_2f

    :cond_4a
    const v13, 0x616c6177

    if-ne v2, v13, :cond_4b

    const-string v2, "audio/g711-alaw"

    goto :goto_2f

    :cond_4b
    const v13, 0x756c6177

    if-ne v2, v13, :cond_4c

    const-string v2, "audio/g711-mlaw"

    goto :goto_2f

    :cond_4c
    const v13, 0x4f707573

    if-ne v2, v13, :cond_4d

    const-string v2, "audio/opus"

    goto :goto_2f

    :cond_4d
    const v13, 0x664c6143

    if-ne v2, v13, :cond_4e

    const-string v2, "audio/flac"

    goto :goto_2f

    :cond_4e
    const v13, 0x6d6c7061

    if-ne v2, v13, :cond_4f

    const-string v2, "audio/true-hd"

    goto :goto_2f

    :cond_4f
    const v13, 0x69616d66

    if-ne v2, v13, :cond_50

    const-string v2, "audio/iamf"

    goto :goto_2f

    :cond_50
    const/4 v2, 0x0

    goto :goto_2f

    :cond_51
    :goto_2d
    const-string v2, "audio/mpeg"

    goto :goto_2f

    :cond_52
    :goto_2e
    const-string v2, "audio/vnd.dts.hd"

    :goto_2f
    move/from16 v43, v5

    move-object/from16 v41, v11

    move-object/from16 v42, v14

    move/from16 v13, v67

    move/from16 v47, v69

    move/from16 v11, v71

    const/4 v5, 0x0

    const/16 v46, 0x0

    const/16 v73, 0x0

    :goto_30
    sub-int v14, v11, v65

    if-ge v14, v4, :cond_b3

    invoke-virtual {v1, v11}, Lk0/u;->G(I)V

    invoke-virtual {v1}, Lk0/u;->g()I

    move-result v14

    move/from16 v48, v4

    if-lez v14, :cond_53

    const/4 v4, 0x1

    goto :goto_31

    :cond_53
    const/4 v4, 0x0

    :goto_31
    invoke-static {v15, v4}, LI0/b;->c(Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lk0/u;->g()I

    move-result v4

    move-object/from16 v49, v15

    const v15, 0x6d686143

    if-ne v4, v15, :cond_57

    add-int/lit8 v4, v11, 0x8

    invoke-virtual {v1, v4}, Lk0/u;->G(I)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lk0/u;->H(I)V

    invoke-virtual {v1}, Lk0/u;->u()I

    move-result v15

    invoke-virtual {v1, v4}, Lk0/u;->H(I)V

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v15, "mhm1.%02X"

    invoke-static {v15, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_32

    :cond_54
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v15, "mha1.%02X"

    invoke-static {v15, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_32
    invoke-virtual {v1}, Lk0/u;->A()I

    move-result v15

    move-object/from16 v50, v3

    new-array v3, v15, [B

    move-object/from16 v46, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v15}, Lk0/u;->e([BII)V

    if-nez v5, :cond_55

    invoke-static {v3}, Lp3/H;->n(Ljava/lang/Object;)Lp3/Y;

    move-result-object v3

    :goto_33
    move-object v5, v3

    goto :goto_34

    :cond_55
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v3, v5}, Lp3/H;->o(Ljava/lang/Object;Ljava/lang/Object;)Lp3/Y;

    move-result-object v3

    goto :goto_33

    :cond_56
    :goto_34
    move-object/from16 v71, v1

    move-object/from16 v53, v5

    move-object/from16 v52, v9

    move/from16 v57, v11

    move v5, v12

    move/from16 v54, v14

    move/from16 v14, v47

    move-object/from16 v15, v49

    :goto_35
    const/4 v4, 0x1

    const/4 v12, 0x0

    const/16 v16, 0x3

    const/16 v17, 0x2

    :goto_36
    move/from16 v47, v6

    goto/16 :goto_7e

    :cond_57
    move-object/from16 v50, v3

    const v3, 0x6d686150

    if-ne v4, v3, :cond_59

    add-int/lit8 v3, v11, 0x8

    invoke-virtual {v1, v3}, Lk0/u;->G(I)V

    invoke-virtual {v1}, Lk0/u;->u()I

    move-result v3

    if-lez v3, :cond_56

    new-array v4, v3, [B

    const/4 v15, 0x0

    invoke-virtual {v1, v4, v15, v3}, Lk0/u;->e([BII)V

    if-nez v5, :cond_58

    invoke-static {v4}, Lp3/H;->n(Ljava/lang/Object;)Lp3/Y;

    move-result-object v5

    goto :goto_34

    :cond_58
    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3, v4}, Lp3/H;->o(Ljava/lang/Object;Ljava/lang/Object;)Lp3/Y;

    move-result-object v5

    goto :goto_34

    :cond_59
    const v15, 0x65736473

    if-eq v4, v15, :cond_a5

    if-eqz p6, :cond_5a

    const v15, 0x77617665

    if-ne v4, v15, :cond_5a

    move-object v3, v1

    move-object/from16 v53, v5

    move-object/from16 v52, v9

    move/from16 v57, v11

    move v5, v12

    move v11, v13

    move/from16 v54, v14

    move/from16 v14, v47

    const v1, 0x65736473

    const/16 v9, 0xc

    const/16 v12, 0x8

    const/16 v13, 0x10

    const/4 v15, 0x4

    const/16 v16, 0x3

    const/16 v17, 0x2

    goto/16 :goto_6d

    :cond_5a
    const v15, 0x64616333

    sget-object v51, LI0/c;->d:[I

    sget-object v52, LI0/c;->b:[I

    if-ne v4, v15, :cond_5c

    add-int/lit8 v3, v11, 0x8

    invoke-virtual {v1, v3}, Lk0/u;->G(I)V

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, LI0/N;

    invoke-direct {v4}, LI0/N;-><init>()V

    invoke-virtual {v4, v1}, LI0/N;->o(Lk0/u;)V

    const/4 v15, 0x2

    invoke-virtual {v4, v15}, LI0/N;->i(I)I

    move-result v53

    aget v15, v52, v53

    move-object/from16 v53, v5

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, LI0/N;->t(I)V

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, LI0/N;->i(I)I

    move-result v52

    aget v5, v51, v52

    move/from16 v51, v5

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, LI0/N;->i(I)I

    move-result v52

    if-eqz v52, :cond_5b

    add-int/lit8 v5, v51, 0x1

    :goto_37
    move/from16 v54, v14

    const/4 v14, 0x5

    goto :goto_38

    :cond_5b
    move/from16 v5, v51

    goto :goto_37

    :goto_38
    invoke-virtual {v4, v14}, LI0/N;->i(I)I

    move-result v51

    sget-object v14, LI0/c;->e:[I

    aget v14, v14, v51

    mul-int/lit16 v14, v14, 0x3e8

    invoke-virtual {v4}, LI0/N;->c()V

    invoke-virtual {v4}, LI0/N;->f()I

    move-result v4

    invoke-virtual {v1, v4}, Lk0/u;->G(I)V

    new-instance v4, Landroidx/media3/common/Format$Builder;

    invoke-direct {v4}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v4, v3}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v3

    iput-object v3, v8, LB4/p;->t:Ljava/lang/Object;

    move-object v3, v1

    move-object/from16 v52, v9

    move/from16 v57, v11

    :goto_39
    move v5, v12

    move v11, v13

    move/from16 v14, v47

    const/16 v9, 0xc

    const/16 v12, 0x8

    const/16 v13, 0x10

    :goto_3a
    const/4 v15, 0x4

    const/16 v16, 0x3

    const/16 v17, 0x2

    goto/16 :goto_6c

    :cond_5c
    move-object/from16 v53, v5

    move/from16 v54, v14

    const v5, 0x64656333

    const/16 v14, 0xd

    const/16 v15, 0xa

    if-ne v4, v5, :cond_61

    add-int/lit8 v4, v11, 0x8

    invoke-virtual {v1, v4}, Lk0/u;->G(I)V

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, LI0/N;

    invoke-direct {v5}, LI0/N;-><init>()V

    invoke-virtual {v5, v1}, LI0/N;->o(Lk0/u;)V

    invoke-virtual {v5, v14}, LI0/N;->i(I)I

    move-result v14

    mul-int/lit16 v14, v14, 0x3e8

    const/4 v3, 0x3

    invoke-virtual {v5, v3}, LI0/N;->t(I)V

    const/4 v3, 0x2

    invoke-virtual {v5, v3}, LI0/N;->i(I)I

    move-result v55

    aget v3, v52, v55

    invoke-virtual {v5, v15}, LI0/N;->t(I)V

    const/4 v15, 0x3

    invoke-virtual {v5, v15}, LI0/N;->i(I)I

    move-result v16

    aget v16, v51, v16

    const/4 v15, 0x1

    invoke-virtual {v5, v15}, LI0/N;->i(I)I

    move-result v19

    if-eqz v19, :cond_5d

    add-int/lit8 v16, v16, 0x1

    :cond_5d
    move/from16 v19, v16

    const/4 v15, 0x3

    invoke-virtual {v5, v15}, LI0/N;->t(I)V

    const/4 v15, 0x4

    invoke-virtual {v5, v15}, LI0/N;->i(I)I

    move-result v52

    const/4 v15, 0x1

    invoke-virtual {v5, v15}, LI0/N;->t(I)V

    if-lez v52, :cond_5f

    move-object/from16 v52, v9

    const/4 v9, 0x6

    invoke-virtual {v5, v9}, LI0/N;->t(I)V

    invoke-virtual {v5, v15}, LI0/N;->i(I)I

    move-result v9

    if-eqz v9, :cond_5e

    add-int/lit8 v19, v19, 0x2

    :cond_5e
    invoke-virtual {v5, v15}, LI0/N;->t(I)V

    :goto_3b
    move/from16 v9, v19

    goto :goto_3c

    :cond_5f
    move-object/from16 v52, v9

    goto :goto_3b

    :goto_3c
    invoke-virtual {v5}, LI0/N;->b()I

    move-result v15

    move/from16 v57, v11

    const/4 v11, 0x7

    if-le v15, v11, :cond_60

    invoke-virtual {v5, v11}, LI0/N;->t(I)V

    const/4 v15, 0x1

    invoke-virtual {v5, v15}, LI0/N;->i(I)I

    move-result v11

    if-eqz v11, :cond_60

    const-string v11, "audio/eac3-joc"

    goto :goto_3d

    :cond_60
    move-object/from16 v11, v70

    :goto_3d
    invoke-virtual {v5}, LI0/N;->c()V

    invoke-virtual {v5}, LI0/N;->f()I

    move-result v5

    invoke-virtual {v1, v5}, Lk0/u;->G(I)V

    new-instance v5, Landroidx/media3/common/Format$Builder;

    invoke-direct {v5}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v5, v4}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v3

    iput-object v3, v8, LB4/p;->t:Ljava/lang/Object;

    move-object v3, v1

    goto/16 :goto_39

    :cond_61
    move-object/from16 v52, v9

    move/from16 v57, v11

    const v3, 0x64616334

    const/16 v5, 0x9

    if-ne v4, v3, :cond_99

    add-int/lit8 v11, v57, 0x8

    invoke-virtual {v1, v11}, Lk0/u;->G(I)V

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, LI0/N;

    invoke-direct {v4}, LI0/N;-><init>()V

    invoke-virtual {v4, v1}, LI0/N;->o(Lk0/u;)V

    invoke-virtual {v4}, LI0/N;->b()I

    move-result v9

    const/4 v11, 0x3

    invoke-virtual {v4, v11}, LI0/N;->i(I)I

    move-result v14

    const/4 v11, 0x1

    if-gt v14, v11, :cond_98

    const/4 v15, 0x7

    invoke-virtual {v4, v15}, LI0/N;->i(I)I

    move-result v11

    invoke-virtual {v4}, LI0/N;->h()Z

    move-result v15

    if-eqz v15, :cond_62

    const v15, 0xbb80

    :goto_3e
    move/from16 v59, v9

    const/4 v9, 0x4

    goto :goto_3f

    :cond_62
    const v15, 0xac44

    goto :goto_3e

    :goto_3f
    invoke-virtual {v4, v9}, LI0/N;->t(I)V

    invoke-virtual {v4, v5}, LI0/N;->i(I)I

    move-result v5

    const/4 v9, 0x1

    if-le v11, v9, :cond_64

    if-eqz v14, :cond_63

    invoke-virtual {v4}, LI0/N;->h()Z

    move-result v9

    if-eqz v9, :cond_64

    const/16 v9, 0x10

    invoke-virtual {v4, v9}, LI0/N;->t(I)V

    invoke-virtual {v4}, LI0/N;->h()Z

    move-result v9

    if-eqz v9, :cond_64

    const/16 v9, 0x80

    invoke-virtual {v4, v9}, LI0/N;->t(I)V

    goto :goto_40

    :cond_63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid AC-4 DSI version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_64
    :goto_40
    const/16 v9, 0x42

    const/4 v11, 0x1

    if-ne v14, v11, :cond_66

    invoke-virtual {v4}, LI0/N;->b()I

    move-result v11

    if-lt v11, v9, :cond_65

    invoke-virtual {v4, v9}, LI0/N;->t(I)V

    invoke-virtual {v4}, LI0/N;->c()V

    goto :goto_41

    :cond_65
    const-string v0, "Invalid AC-4 DSI bitrate."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_66
    :goto_41
    new-instance v11, LI0/d;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    const/4 v9, 0x1

    iput-boolean v9, v11, LI0/d;->a:Z

    const/4 v9, -0x1

    iput v9, v11, LI0/d;->b:I

    iput v9, v11, LI0/d;->c:I

    const/4 v9, 0x1

    iput-boolean v9, v11, LI0/d;->d:Z

    const/4 v9, 0x2

    iput v9, v11, LI0/d;->e:I

    const/4 v9, 0x0

    iput v9, v11, LI0/d;->f:I

    move/from16 v60, v13

    const/4 v9, 0x0

    :goto_42
    if-ge v9, v5, :cond_8d

    if-nez v14, :cond_67

    invoke-virtual {v4}, LI0/N;->h()Z

    move-result v5

    const/4 v13, 0x5

    invoke-virtual {v4, v13}, LI0/N;->i(I)I

    move-result v55

    invoke-virtual {v4, v13}, LI0/N;->i(I)I

    move-result v61

    move-object/from16 v62, v2

    move/from16 v66, v5

    move/from16 v13, v55

    move/from16 v5, v61

    const/4 v2, 0x0

    const/16 v36, 0x0

    const/16 v55, 0x0

    :goto_43
    move/from16 v67, v12

    goto :goto_47

    :cond_67
    move/from16 v61, v5

    const/16 v13, 0x8

    invoke-virtual {v4, v13}, LI0/N;->i(I)I

    move-result v5

    move-object/from16 v62, v2

    invoke-virtual {v4, v13}, LI0/N;->i(I)I

    move-result v2

    const/16 v13, 0xff

    if-ne v2, v13, :cond_68

    const/16 v13, 0x10

    invoke-virtual {v4, v13}, LI0/N;->i(I)I

    move-result v66

    add-int v66, v66, v2

    :goto_44
    const/4 v2, 0x2

    goto :goto_45

    :cond_68
    move/from16 v66, v2

    goto :goto_44

    :goto_45
    if-le v5, v2, :cond_69

    mul-int/lit8 v2, v66, 0x8

    invoke-virtual {v4, v2}, LI0/N;->t(I)V

    add-int/lit8 v9, v9, 0x1

    move/from16 v5, v61

    move-object/from16 v2, v62

    goto :goto_42

    :cond_69
    invoke-virtual {v4}, LI0/N;->b()I

    move-result v2

    sub-int v2, v59, v2

    const/16 v21, 0x8

    div-int/lit8 v2, v2, 0x8

    move/from16 v55, v2

    const/4 v13, 0x5

    invoke-virtual {v4, v13}, LI0/N;->i(I)I

    move-result v2

    const/16 v13, 0x1f

    if-ne v2, v13, :cond_6a

    const/16 v36, 0x1

    goto :goto_46

    :cond_6a
    const/16 v36, 0x0

    :goto_46
    move v13, v2

    move/from16 v2, v66

    const/16 v66, 0x0

    goto :goto_43

    :goto_47
    if-nez v66, :cond_6b

    if-nez v36, :cond_6b

    const/4 v12, 0x6

    if-ne v13, v12, :cond_6b

    move-object/from16 v71, v1

    move/from16 v58, v5

    const/4 v1, 0x1

    goto/16 :goto_5b

    :cond_6b
    move-object/from16 v71, v1

    const/4 v12, 0x3

    invoke-virtual {v4, v12}, LI0/N;->i(I)I

    move-result v1

    iput v1, v11, LI0/d;->f:I

    invoke-virtual {v4}, LI0/N;->h()Z

    move-result v1

    if-eqz v1, :cond_6c

    const/4 v1, 0x5

    invoke-virtual {v4, v1}, LI0/N;->t(I)V

    :cond_6c
    const/4 v1, 0x2

    invoke-virtual {v4, v1}, LI0/N;->t(I)V

    const/4 v12, 0x1

    if-ne v14, v12, :cond_6d

    if-eq v5, v12, :cond_6e

    if-ne v5, v1, :cond_6d

    goto :goto_49

    :cond_6d
    :goto_48
    const/4 v1, 0x5

    goto :goto_4a

    :cond_6e
    :goto_49
    invoke-virtual {v4, v1}, LI0/N;->t(I)V

    goto :goto_48

    :goto_4a
    invoke-virtual {v4, v1}, LI0/N;->t(I)V

    const/16 v1, 0xa

    invoke-virtual {v4, v1}, LI0/N;->t(I)V

    if-ne v14, v12, :cond_75

    if-lez v5, :cond_6f

    invoke-virtual {v4}, LI0/N;->h()Z

    move-result v1

    iput-boolean v1, v11, LI0/d;->a:Z

    :cond_6f
    iget-boolean v1, v11, LI0/d;->a:Z

    if-eqz v1, :cond_74

    if-eq v5, v12, :cond_70

    const/4 v1, 0x2

    if-ne v5, v1, :cond_71

    :cond_70
    const/4 v1, 0x5

    goto :goto_4c

    :cond_71
    :goto_4b
    const/16 v12, 0x18

    goto :goto_4d

    :goto_4c
    invoke-virtual {v4, v1}, LI0/N;->i(I)I

    move-result v12

    if-ltz v12, :cond_72

    const/16 v1, 0xf

    if-gt v12, v1, :cond_72

    iput v12, v11, LI0/d;->b:I

    :cond_72
    const/16 v1, 0xb

    if-lt v12, v1, :cond_73

    const/16 v1, 0xe

    if-gt v12, v1, :cond_73

    invoke-virtual {v4}, LI0/N;->h()Z

    move-result v1

    iput-boolean v1, v11, LI0/d;->d:Z

    const/4 v1, 0x2

    invoke-virtual {v4, v1}, LI0/N;->i(I)I

    move-result v12

    iput v12, v11, LI0/d;->e:I

    goto :goto_4b

    :cond_73
    const/4 v1, 0x2

    goto :goto_4b

    :goto_4d
    invoke-virtual {v4, v12}, LI0/N;->t(I)V

    :goto_4e
    const/4 v12, 0x1

    goto :goto_4f

    :cond_74
    const/4 v1, 0x2

    goto :goto_4e

    :goto_4f
    if-eq v5, v12, :cond_76

    if-ne v5, v1, :cond_75

    goto :goto_50

    :cond_75
    move/from16 v58, v5

    goto :goto_52

    :cond_76
    :goto_50
    invoke-virtual {v4}, LI0/N;->h()Z

    move-result v12

    if-eqz v12, :cond_77

    invoke-virtual {v4}, LI0/N;->h()Z

    move-result v12

    if-eqz v12, :cond_77

    invoke-virtual {v4, v1}, LI0/N;->t(I)V

    :cond_77
    invoke-virtual {v4}, LI0/N;->h()Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-virtual {v4}, LI0/N;->s()V

    const/16 v1, 0x8

    invoke-virtual {v4, v1}, LI0/N;->i(I)I

    move-result v12

    move/from16 v58, v5

    const/4 v5, 0x0

    :goto_51
    if-ge v5, v12, :cond_78

    invoke-virtual {v4, v1}, LI0/N;->t(I)V

    add-int/lit8 v5, v5, 0x1

    const/16 v1, 0x8

    goto :goto_51

    :cond_78
    :goto_52
    if-nez v66, :cond_80

    if-eqz v36, :cond_79

    goto/16 :goto_59

    :cond_79
    invoke-virtual {v4}, LI0/N;->s()V

    if-eqz v13, :cond_7e

    const/4 v12, 0x1

    if-eq v13, v12, :cond_7e

    const/4 v1, 0x2

    if-eq v13, v1, :cond_7e

    const/4 v12, 0x3

    if-eq v13, v12, :cond_7c

    const/4 v1, 0x4

    if-eq v13, v1, :cond_7c

    const/4 v1, 0x5

    if-eq v13, v1, :cond_7a

    const/4 v1, 0x7

    invoke-virtual {v4, v1}, LI0/N;->i(I)I

    move-result v5

    const/4 v1, 0x0

    :goto_53
    if-ge v1, v5, :cond_82

    const/16 v13, 0x8

    invoke-virtual {v4, v13}, LI0/N;->t(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    :cond_7a
    if-nez v58, :cond_7b

    invoke-static {v4, v11}, LI0/e;->c(LI0/N;LI0/d;)V

    goto :goto_5a

    :cond_7b
    const/4 v12, 0x3

    invoke-virtual {v4, v12}, LI0/N;->i(I)I

    move-result v1

    const/4 v5, 0x0

    :goto_54
    const/16 v17, 0x2

    add-int/lit8 v12, v1, 0x2

    if-ge v5, v12, :cond_82

    invoke-static {v4, v11}, LI0/e;->d(LI0/N;LI0/d;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_54

    :cond_7c
    if-nez v58, :cond_7d

    const/4 v1, 0x0

    const/4 v12, 0x3

    :goto_55
    if-ge v1, v12, :cond_82

    invoke-static {v4, v11}, LI0/e;->c(LI0/N;LI0/d;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    :cond_7d
    const/4 v1, 0x0

    :goto_56
    const/4 v12, 0x3

    if-ge v1, v12, :cond_82

    invoke-static {v4, v11}, LI0/e;->d(LI0/N;LI0/d;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    :cond_7e
    if-nez v58, :cond_7f

    const/4 v1, 0x0

    const/4 v5, 0x2

    :goto_57
    if-ge v1, v5, :cond_82

    invoke-static {v4, v11}, LI0/e;->c(LI0/N;LI0/d;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    :cond_7f
    const/4 v1, 0x0

    :goto_58
    const/4 v5, 0x2

    if-ge v1, v5, :cond_82

    invoke-static {v4, v11}, LI0/e;->d(LI0/N;LI0/d;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    :cond_80
    :goto_59
    if-nez v58, :cond_81

    invoke-static {v4, v11}, LI0/e;->c(LI0/N;LI0/d;)V

    goto :goto_5a

    :cond_81
    invoke-static {v4, v11}, LI0/e;->d(LI0/N;LI0/d;)V

    :cond_82
    :goto_5a
    invoke-virtual {v4}, LI0/N;->s()V

    invoke-virtual {v4}, LI0/N;->h()Z

    move-result v1

    :goto_5b
    if-eqz v1, :cond_83

    const/4 v1, 0x7

    invoke-virtual {v4, v1}, LI0/N;->i(I)I

    move-result v5

    const/4 v12, 0x0

    :goto_5c
    if-ge v12, v5, :cond_84

    const/16 v13, 0xf

    invoke-virtual {v4, v13}, LI0/N;->t(I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_5c

    :cond_83
    const/4 v1, 0x7

    :cond_84
    if-lez v58, :cond_89

    invoke-virtual {v4}, LI0/N;->h()Z

    move-result v5

    if-eqz v5, :cond_87

    invoke-virtual {v4}, LI0/N;->b()I

    move-result v5

    const/16 v12, 0x42

    if-ge v5, v12, :cond_85

    const/4 v5, 0x0

    goto :goto_5d

    :cond_85
    invoke-virtual {v4, v12}, LI0/N;->t(I)V

    const/4 v5, 0x1

    :goto_5d
    if-eqz v5, :cond_86

    goto :goto_5e

    :cond_86
    const-string v0, "Can\'t parse bitrate DSI."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_87
    :goto_5e
    invoke-virtual {v4}, LI0/N;->h()Z

    move-result v5

    if-eqz v5, :cond_89

    invoke-virtual {v4}, LI0/N;->c()V

    const/16 v13, 0x10

    invoke-virtual {v4, v13}, LI0/N;->i(I)I

    move-result v5

    invoke-virtual {v4, v5}, LI0/N;->u(I)V

    const/4 v12, 0x5

    invoke-virtual {v4, v12}, LI0/N;->i(I)I

    move-result v5

    const/4 v1, 0x0

    :goto_5f
    if-ge v1, v5, :cond_88

    const/4 v12, 0x3

    invoke-virtual {v4, v12}, LI0/N;->t(I)V

    const/16 v12, 0x8

    invoke-virtual {v4, v12}, LI0/N;->t(I)V

    add-int/lit8 v1, v1, 0x1

    const/4 v12, 0x5

    goto :goto_5f

    :cond_88
    const/16 v12, 0x8

    goto :goto_60

    :cond_89
    const/16 v12, 0x8

    const/16 v13, 0x10

    :goto_60
    invoke-virtual {v4}, LI0/N;->c()V

    const/4 v5, 0x1

    if-ne v14, v5, :cond_8b

    invoke-virtual {v4}, LI0/N;->b()I

    move-result v1

    sub-int v1, v59, v1

    div-int/2addr v1, v12

    sub-int v1, v1, v55

    if-lt v2, v1, :cond_8a

    sub-int/2addr v2, v1

    invoke-virtual {v4, v2}, LI0/N;->u(I)V

    goto :goto_61

    :cond_8a
    const-string v0, "pres_bytes is smaller than presentation bytes read."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_8b
    :goto_61
    iget-boolean v1, v11, LI0/d;->a:Z

    if-eqz v1, :cond_8e

    iget v1, v11, LI0/d;->b:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_8c

    goto :goto_62

    :cond_8c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t determine channel mode of presentation "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_8d
    move-object/from16 v71, v1

    move-object/from16 v62, v2

    move/from16 v67, v12

    const/16 v12, 0x8

    const/16 v13, 0x10

    :cond_8e
    :goto_62
    iget-boolean v1, v11, LI0/d;->a:Z

    if-eqz v1, :cond_94

    iget v1, v11, LI0/d;->b:I

    iget-boolean v2, v11, LI0/d;->d:Z

    iget v4, v11, LI0/d;->e:I

    packed-switch v1, :pswitch_data_0

    const/16 v5, 0xb

    const/16 v56, -0x1

    goto :goto_63

    :pswitch_0
    const/16 v5, 0xb

    const/16 v56, 0x18

    goto :goto_63

    :pswitch_1
    const/16 v5, 0xb

    const/16 v56, 0xe

    goto :goto_63

    :pswitch_2
    const/16 v5, 0xb

    const/16 v56, 0xd

    goto :goto_63

    :pswitch_3
    const/16 v5, 0xb

    const/16 v56, 0xc

    goto :goto_63

    :pswitch_4
    const/16 v5, 0xb

    const/16 v56, 0xb

    goto :goto_63

    :pswitch_5
    move/from16 v56, v12

    const/16 v5, 0xb

    goto :goto_63

    :pswitch_6
    const/16 v5, 0xb

    const/16 v56, 0x7

    goto :goto_63

    :pswitch_7
    const/16 v5, 0xb

    const/16 v56, 0x6

    goto :goto_63

    :pswitch_8
    const/16 v5, 0xb

    const/16 v56, 0x5

    goto :goto_63

    :pswitch_9
    const/16 v5, 0xb

    const/16 v56, 0x3

    goto :goto_63

    :pswitch_a
    const/16 v5, 0xb

    const/16 v56, 0x2

    goto :goto_63

    :pswitch_b
    const/16 v5, 0xb

    const/16 v56, 0x1

    :goto_63
    const/16 v9, 0xc

    if-eq v1, v5, :cond_90

    if-eq v1, v9, :cond_90

    const/16 v5, 0xd

    if-eq v1, v5, :cond_90

    const/16 v5, 0xe

    if-ne v1, v5, :cond_8f

    goto :goto_64

    :cond_8f
    const/4 v5, 0x1

    goto :goto_65

    :cond_90
    :goto_64
    if-nez v2, :cond_91

    add-int/lit8 v56, v56, -0x2

    :cond_91
    if-eqz v4, :cond_93

    const/4 v5, 0x1

    if-eq v4, v5, :cond_92

    goto :goto_65

    :cond_92
    add-int/lit8 v56, v56, -0x2

    goto :goto_65

    :cond_93
    const/4 v5, 0x1

    add-int/lit8 v56, v56, -0x4

    :goto_65
    move/from16 v1, v56

    goto :goto_66

    :cond_94
    const/4 v5, 0x1

    const/16 v9, 0xc

    iget v1, v11, LI0/d;->c:I

    add-int/2addr v1, v5

    iget v2, v11, LI0/d;->f:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_96

    const/16 v2, 0x11

    if-ne v1, v2, :cond_95

    move/from16 v56, v64

    goto :goto_65

    :cond_95
    move/from16 v56, v1

    goto :goto_65

    :cond_96
    :goto_66
    if-lez v1, :cond_97

    new-instance v2, Landroidx/media3/common/Format$Builder;

    invoke-direct {v2}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v1

    iput-object v1, v8, LB4/p;->t:Ljava/lang/Object;

    move/from16 v14, v47

    move/from16 v11, v60

    move-object/from16 v2, v62

    move/from16 v5, v67

    move-object/from16 v3, v71

    goto/16 :goto_3a

    :cond_97
    const-string v0, "Can\'t determine channel count of presentation."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported AC-4 DSI version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_99
    move-object/from16 v71, v1

    move-object/from16 v62, v2

    move/from16 v67, v12

    move/from16 v60, v13

    const/16 v9, 0xc

    const/16 v12, 0x8

    const/16 v13, 0x10

    const v1, 0x646d6c70

    if-ne v4, v1, :cond_9b

    if-lez v6, :cond_9a

    move v14, v6

    move/from16 v47, v14

    move-object/from16 v15, v49

    move-object/from16 v2, v62

    move/from16 v5, v67

    const/4 v4, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/16 v16, 0x3

    const/16 v17, 0x2

    goto/16 :goto_7e

    :cond_9a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid sample rate for Dolby TrueHD MLP stream: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_9b
    const v1, 0x64647473

    if-eq v4, v1, :cond_9c

    const v1, 0x75647473

    if-ne v4, v1, :cond_9d

    :cond_9c
    move-object/from16 v3, v71

    const/4 v15, 0x4

    const/16 v16, 0x3

    const/16 v17, 0x2

    goto/16 :goto_6b

    :cond_9d
    const v1, 0x644f7073

    if-ne v4, v1, :cond_9e

    add-int/lit8 v14, v54, -0x8

    sget-object v1, Lc1/d;->a:[B

    array-length v2, v1

    add-int/2addr v2, v14

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    add-int/lit8 v11, v57, 0x8

    move-object/from16 v3, v71

    invoke-virtual {v3, v11}, Lk0/u;->G(I)V

    array-length v1, v1

    invoke-virtual {v3, v2, v1, v14}, Lk0/u;->e([BII)V

    invoke-static {v2}, LI0/b;->a([B)Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v53, v5

    move/from16 v14, v47

    move-object/from16 v15, v49

    move/from16 v13, v60

    move-object/from16 v2, v62

    move/from16 v5, v67

    goto/16 :goto_35

    :cond_9e
    move-object/from16 v3, v71

    const v1, 0x64664c61

    if-ne v4, v1, :cond_9f

    add-int/lit8 v14, v54, -0xc

    add-int/lit8 v1, v54, -0x8

    new-array v1, v1, [B

    const/16 v2, 0x66

    const/16 v33, 0x0

    aput-byte v2, v1, v33

    const/16 v2, 0x4c

    const/16 v19, 0x1

    aput-byte v2, v1, v19

    const/16 v2, 0x61

    const/16 v17, 0x2

    aput-byte v2, v1, v17

    const/16 v2, 0x43

    const/16 v16, 0x3

    aput-byte v2, v1, v16

    add-int/lit8 v11, v57, 0xc

    invoke-virtual {v3, v11}, Lk0/u;->G(I)V

    const/4 v15, 0x4

    invoke-virtual {v3, v1, v15, v14}, Lk0/u;->e([BII)V

    invoke-static {v1}, Lp3/H;->n(Ljava/lang/Object;)Lp3/Y;

    move-result-object v5

    :goto_67
    move-object/from16 v71, v3

    move-object/from16 v53, v5

    move/from16 v14, v47

    move-object/from16 v15, v49

    move/from16 v13, v60

    move-object/from16 v2, v62

    move/from16 v5, v67

    const/4 v4, 0x1

    const/4 v12, 0x0

    goto/16 :goto_36

    :cond_9f
    const v1, 0x616c6163

    const/4 v15, 0x4

    const/16 v16, 0x3

    const/16 v17, 0x2

    if-ne v4, v1, :cond_a0

    add-int/lit8 v14, v54, -0xc

    new-array v2, v14, [B

    add-int/lit8 v11, v57, 0xc

    invoke-virtual {v3, v11}, Lk0/u;->G(I)V

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v14}, Lk0/u;->e([BII)V

    sget-object v4, Lk0/e;->a:[B

    new-instance v4, Lk0/u;

    invoke-direct {v4, v2}, Lk0/u;-><init>([B)V

    invoke-virtual {v4, v5}, Lk0/u;->G(I)V

    invoke-virtual {v4}, Lk0/u;->u()I

    move-result v5

    const/16 v11, 0x14

    invoke-virtual {v4, v11}, Lk0/u;->G(I)V

    invoke-virtual {v4}, Lk0/u;->y()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2}, Lp3/H;->n(Ljava/lang/Object;)Lp3/Y;

    move-result-object v2

    move-object/from16 v53, v2

    move-object/from16 v71, v3

    move v13, v4

    move v14, v5

    move/from16 v47, v6

    move-object/from16 v15, v49

    move-object/from16 v2, v62

    move/from16 v5, v67

    :goto_68
    const/4 v4, 0x1

    const/4 v12, 0x0

    goto/16 :goto_7e

    :cond_a0
    const v2, 0x69616362

    if-ne v4, v2, :cond_a4

    add-int/lit8 v11, v57, 0x9

    invoke-virtual {v3, v11}, Lk0/u;->G(I)V

    move-wide/from16 v35, v25

    const/4 v2, 0x0

    :goto_69
    if-ge v2, v5, :cond_a3

    iget v4, v3, Lk0/u;->b:I

    iget v11, v3, Lk0/u;->c:I

    if-eq v4, v11, :cond_a2

    invoke-virtual {v3}, Lk0/u;->u()I

    move-result v4

    move v11, v2

    int-to-long v1, v4

    const-wide/16 v55, 0x7f

    and-long v55, v1, v55

    mul-int/lit8 v4, v11, 0x7

    shl-long v55, v55, v4

    or-long v35, v35, v55

    const-wide/16 v55, 0x80

    and-long v1, v1, v55

    cmp-long v1, v1, v25

    if-nez v1, :cond_a1

    goto :goto_6a

    :cond_a1
    add-int/lit8 v2, v11, 0x1

    const v1, 0x616c6163

    goto :goto_69

    :cond_a2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to read a byte over the limit."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a3
    :goto_6a
    invoke-static/range {v35 .. v36}, La/a;->f(J)I

    move-result v1

    new-array v2, v1, [B

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1}, Lk0/u;->e([BII)V

    invoke-static {v2}, Lp3/H;->n(Ljava/lang/Object;)Lp3/Y;

    move-result-object v5

    goto/16 :goto_67

    :cond_a4
    move/from16 v14, v47

    move/from16 v11, v60

    move-object/from16 v2, v62

    move/from16 v5, v67

    goto :goto_6c

    :goto_6b
    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    move/from16 v5, v67

    invoke-virtual {v1, v5}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    move-object/from16 v2, v62

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    move/from16 v11, v60

    invoke-virtual {v1, v11}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    move/from16 v14, v47

    invoke-virtual {v1, v14}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v1

    iput-object v1, v8, LB4/p;->t:Ljava/lang/Object;

    :goto_6c
    move-object/from16 v71, v3

    move/from16 v47, v6

    move v13, v11

    move-object/from16 v15, v49

    goto/16 :goto_68

    :cond_a5
    move-object v3, v1

    move-object/from16 v53, v5

    move-object/from16 v52, v9

    move/from16 v57, v11

    move v5, v12

    move v11, v13

    move/from16 v54, v14

    move/from16 v14, v47

    const/16 v9, 0xc

    const/16 v12, 0x8

    const/16 v13, 0x10

    const/4 v15, 0x4

    const/16 v16, 0x3

    const/16 v17, 0x2

    const v1, 0x65736473

    :goto_6d
    if-ne v4, v1, :cond_a6

    move-object/from16 v15, v49

    move/from16 v12, v54

    move/from16 v1, v57

    move v4, v1

    :goto_6e
    const/4 v13, -0x1

    goto :goto_75

    :cond_a6
    iget v1, v3, Lk0/u;->b:I

    move/from16 v4, v57

    if-lt v1, v4, :cond_a7

    const/4 v9, 0x1

    :goto_6f
    const/4 v12, 0x0

    goto :goto_70

    :cond_a7
    const/4 v9, 0x0

    goto :goto_6f

    :goto_70
    invoke-static {v12, v9}, LI0/b;->c(Ljava/lang/String;Z)V

    :goto_71
    sub-int v9, v1, v4

    move/from16 v12, v54

    if-ge v9, v12, :cond_aa

    invoke-virtual {v3, v1}, Lk0/u;->G(I)V

    invoke-virtual {v3}, Lk0/u;->g()I

    move-result v9

    if-lez v9, :cond_a8

    const/4 v13, 0x1

    :goto_72
    move-object/from16 v15, v49

    goto :goto_73

    :cond_a8
    const/4 v13, 0x0

    goto :goto_72

    :goto_73
    invoke-static {v15, v13}, LI0/b;->c(Ljava/lang/String;Z)V

    invoke-virtual {v3}, Lk0/u;->g()I

    move-result v13

    move/from16 v36, v1

    const v1, 0x65736473

    if-ne v13, v1, :cond_a9

    goto :goto_74

    :cond_a9
    add-int v9, v36, v9

    move v1, v9

    move/from16 v54, v12

    move-object/from16 v49, v15

    const/4 v12, 0x0

    const/16 v13, 0x10

    const/4 v15, 0x4

    goto :goto_71

    :cond_aa
    move-object/from16 v15, v49

    const/16 v36, -0x1

    :goto_74
    move/from16 v1, v36

    goto :goto_6e

    :goto_75
    if-eq v1, v13, :cond_b2

    invoke-static {v3, v1}, Lc1/d;->b(Lk0/u;I)Landroidx/media3/exoplayer/source/Z;

    move-result-object v1

    iget-object v2, v1, Landroidx/media3/exoplayer/source/Z;->r:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v9, v1, Landroidx/media3/exoplayer/source/Z;->s:Ljava/lang/Object;

    check-cast v9, [B

    if-eqz v9, :cond_b1

    const-string v13, "audio/vorbis"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_af

    new-instance v13, Lk0/u;

    invoke-direct {v13, v9}, Lk0/u;-><init>([B)V

    move-object/from16 v36, v1

    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Lk0/u;->H(I)V

    const/4 v1, 0x0

    :goto_76
    invoke-virtual {v13}, Lk0/u;->a()I

    move-result v47

    move-object/from16 v71, v3

    if-lez v47, :cond_ab

    iget-object v3, v13, Lk0/u;->a:[B

    move-object/from16 v47, v3

    iget v3, v13, Lk0/u;->b:I

    aget-byte v3, v47, v3

    move/from16 v57, v4

    const/16 v4, 0xff

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_ac

    add-int/lit16 v1, v1, 0xff

    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Lk0/u;->H(I)V

    move/from16 v4, v57

    move-object/from16 v3, v71

    goto :goto_76

    :cond_ab
    move/from16 v57, v4

    :cond_ac
    invoke-virtual {v13}, Lk0/u;->u()I

    move-result v3

    add-int/2addr v3, v1

    const/4 v1, 0x0

    :goto_77
    invoke-virtual {v13}, Lk0/u;->a()I

    move-result v4

    if-lez v4, :cond_ae

    iget-object v4, v13, Lk0/u;->a:[B

    move-object/from16 v47, v4

    iget v4, v13, Lk0/u;->b:I

    aget-byte v4, v47, v4

    move/from16 v47, v6

    const/16 v6, 0xff

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_ad

    add-int/lit16 v1, v1, 0xff

    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Lk0/u;->H(I)V

    move/from16 v6, v47

    goto :goto_77

    :cond_ad
    :goto_78
    const/4 v4, 0x1

    goto :goto_79

    :cond_ae
    move/from16 v47, v6

    goto :goto_78

    :goto_79
    invoke-virtual {v13}, Lk0/u;->u()I

    move-result v6

    add-int/2addr v6, v1

    new-array v1, v3, [B

    iget v13, v13, Lk0/u;->b:I

    move/from16 v54, v12

    const/4 v12, 0x0

    invoke-static {v9, v13, v1, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v13, v3

    add-int/2addr v13, v6

    array-length v3, v9

    sub-int/2addr v3, v13

    new-array v6, v3, [B

    invoke-static {v9, v13, v6, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v6}, Lp3/H;->o(Ljava/lang/Object;Ljava/lang/Object;)Lp3/Y;

    move-result-object v1

    move v6, v11

    :goto_7a
    move-object/from16 v73, v36

    goto :goto_7d

    :cond_af
    move-object/from16 v36, v1

    move-object/from16 v71, v3

    move/from16 v57, v4

    move/from16 v47, v6

    move/from16 v54, v12

    const/4 v4, 0x1

    const/4 v12, 0x0

    const-string v1, "audio/mp4a-latm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b0

    new-instance v1, LI0/N;

    array-length v3, v9

    invoke-direct {v1, v9, v3}, LI0/N;-><init>([BI)V

    invoke-static {v1, v12}, LI0/b;->i(LI0/N;Z)LI0/a;

    move-result-object v1

    iget v14, v1, LI0/a;->b:I

    iget v13, v1, LI0/a;->c:I

    iget-object v1, v1, LI0/a;->a:Ljava/lang/String;

    move-object/from16 v46, v1

    goto :goto_7b

    :cond_b0
    move v13, v11

    :goto_7b
    invoke-static {v9}, Lp3/H;->n(Ljava/lang/Object;)Lp3/Y;

    move-result-object v1

    move v6, v13

    goto :goto_7a

    :cond_b1
    move-object/from16 v36, v1

    move-object/from16 v71, v3

    move/from16 v57, v4

    move/from16 v47, v6

    move/from16 v54, v12

    const/4 v4, 0x1

    const/4 v12, 0x0

    move v6, v11

    move-object/from16 v73, v36

    :goto_7c
    move-object/from16 v1, v53

    goto :goto_7d

    :cond_b2
    move-object/from16 v71, v3

    move/from16 v57, v4

    move/from16 v47, v6

    move/from16 v54, v12

    const/4 v4, 0x1

    const/4 v12, 0x0

    move v6, v11

    goto :goto_7c

    :goto_7d
    move-object/from16 v53, v1

    move v13, v6

    :goto_7e
    add-int v11, v57, v54

    move v12, v5

    move/from16 v6, v47

    move/from16 v4, v48

    move-object/from16 v3, v50

    move-object/from16 v9, v52

    move-object/from16 v5, v53

    move-object/from16 v1, v71

    move/from16 v47, v14

    goto/16 :goto_30

    :cond_b3
    move-object/from16 v71, v1

    move/from16 v48, v4

    move-object/from16 v53, v5

    move v5, v12

    move v11, v13

    move/from16 v14, v47

    const/4 v4, 0x1

    const/4 v12, 0x0

    const/16 v16, 0x3

    const/16 v17, 0x2

    iget-object v1, v8, LB4/p;->t:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/Format;

    if-nez v1, :cond_b5

    if-eqz v2, :cond_b5

    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v1, v5}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    move-object/from16 v2, v46

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    move/from16 v2, v43

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setPcmEncoding(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    move-object/from16 v2, v53

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    move-object/from16 v2, v73

    if-eqz v2, :cond_b4

    iget-wide v6, v2, Landroidx/media3/exoplayer/source/Z;->b:J

    invoke-static {v6, v7}, La/a;->H(J)I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    iget-wide v6, v2, Landroidx/media3/exoplayer/source/Z;->q:J

    invoke-static {v6, v7}, La/a;->H(J)I

    move-result v2

    invoke-virtual {v3, v2}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    :cond_b4
    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v1

    iput-object v1, v8, LB4/p;->t:Ljava/lang/Object;

    :cond_b5
    :goto_7f
    move/from16 v19, v4

    move/from16 v18, v37

    move/from16 v9, v40

    move/from16 v3, v65

    move-object/from16 v1, v71

    const/4 v10, 0x0

    const v11, 0x7374626c

    const v13, 0x6d696e66

    goto/16 :goto_19

    :cond_b6
    move-object/from16 v68, v10

    move-object/from16 v41, v11

    move v5, v12

    move/from16 v72, v13

    move-object/from16 v42, v14

    const/4 v12, 0x0

    const/16 v16, 0x3

    const/16 v17, 0x2

    move-object/from16 v7, p4

    move/from16 v18, v37

    const/4 v10, 0x0

    const v11, 0x7374626c

    const v13, 0x6d696e66

    goto/16 :goto_16

    :goto_80
    invoke-static/range {v1 .. v9}, Lc1/d;->i(Lk0/u;IIIIILandroidx/media3/common/DrmInitData;LB4/p;I)V

    move/from16 v48, v4

    move/from16 v63, v6

    :goto_81
    add-int v3, v3, v48

    invoke-virtual {v1, v3}, Lk0/u;->G(I)V

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v7, p4

    move v12, v5

    move/from16 v3, v18

    move/from16 v4, v34

    move/from16 v2, v35

    move-object/from16 v11, v41

    move-object/from16 v14, v42

    move/from16 v6, v63

    move-object/from16 v10, v68

    move/from16 v13, v72

    const/16 v15, 0x1f

    goto/16 :goto_14

    :cond_b7
    move/from16 v18, v3

    move-object/from16 v68, v10

    move-object/from16 v41, v11

    move v5, v12

    move/from16 v72, v13

    move-object/from16 v42, v14

    const/4 v10, 0x0

    const v11, 0x7374626c

    const/4 v12, 0x0

    const v13, 0x6d696e66

    if-nez p5, :cond_b8

    const v0, 0x65647473

    move-object/from16 v1, v42

    invoke-virtual {v1, v0}, Ll0/b;->k(I)Ll0/b;

    move-result-object v0

    if-eqz v0, :cond_b9

    invoke-static {v0}, Lc1/d;->a(Ll0/b;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_b9

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, [J

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [J

    move-object/from16 v29, v32

    move-object/from16 v32, v0

    goto :goto_82

    :cond_b8
    move-object/from16 v1, v42

    :cond_b9
    move-object v9, v10

    move-object/from16 v29, v32

    move-object/from16 v32, v9

    :goto_82
    iget-object v0, v8, LB4/p;->t:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/Format;

    if-nez v0, :cond_ba

    move-object/from16 v0, p7

    move-object v9, v10

    goto :goto_83

    :cond_ba
    new-instance v16, Lc1/q;

    iget v2, v8, LB4/p;->r:I

    iget v3, v8, LB4/p;->q:I

    move/from16 v17, v5

    move-wide/from16 v25, v27

    move-wide/from16 v23, v30

    move-wide/from16 v21, v38

    move-wide/from16 v19, v44

    move-object/from16 v27, v0

    move/from16 v28, v2

    move/from16 v30, v3

    move-object/from16 v31, v9

    invoke-direct/range {v16 .. v32}, Lc1/q;-><init>(IIJJJJLandroidx/media3/common/Format;I[Lc1/r;I[J[J)V

    move-object/from16 v0, p7

    move-object/from16 v9, v16

    :goto_83
    invoke-interface {v0, v9}, Lo3/d;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc1/q;

    if-nez v2, :cond_bb

    move-object/from16 v3, p1

    move-object/from16 v2, v41

    goto :goto_84

    :cond_bb
    const v3, 0x6d646961

    invoke-virtual {v1, v3}, Ll0/b;->k(I)Ll0/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v13}, Ll0/b;->k(I)Ll0/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v11}, Ll0/b;->k(I)Ll0/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v3, p1

    invoke-static {v2, v1, v3}, Lc1/d;->g(Lc1/q;Ll0/b;LI0/y;)Lc1/t;

    move-result-object v1

    move-object/from16 v2, v41

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_84
    add-int/lit8 v13, v72, 0x1

    move-object/from16 v0, p0

    move-object/from16 v7, p4

    move-object v11, v2

    move-object/from16 v10, v68

    goto/16 :goto_0

    :cond_bc
    const/4 v10, 0x0

    const-string v0, "Malformed sample table (stbl) missing sample description (stsd)"

    invoke-static {v0, v10}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_bd
    move-object v2, v11

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static i(Lk0/u;IIIIILandroidx/media3/common/DrmInitData;LB4/p;I)V
    .locals 39

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    add-int/lit8 v5, v1, 0x10

    invoke-virtual {v0, v5}, Lk0/u;->G(I)V

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Lk0/u;->H(I)V

    invoke-virtual {v0}, Lk0/u;->A()I

    move-result v5

    invoke-virtual {v0}, Lk0/u;->A()I

    move-result v6

    const/16 v7, 0x32

    invoke-virtual {v0, v7}, Lk0/u;->H(I)V

    iget v7, v0, Lk0/u;->b:I

    const v8, 0x656e6376

    move/from16 v10, p1

    if-ne v10, v8, :cond_2

    invoke-static {v0, v1, v2}, Lc1/d;->f(Lk0/u;II)Landroid/util/Pair;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v11, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Lc1/r;

    iget-object v11, v11, Lc1/r;->b:Ljava/lang/String;

    invoke-virtual {v3, v11}, Landroidx/media3/common/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Landroidx/media3/common/DrmInitData;

    move-result-object v3

    :goto_0
    iget-object v11, v4, LB4/p;->s:Ljava/lang/Object;

    check-cast v11, [Lc1/r;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Lc1/r;

    aput-object v8, v11, p8

    :cond_1
    invoke-virtual {v0, v7}, Lk0/u;->G(I)V

    :cond_2
    const v8, 0x6d317620

    const-string v11, "video/3gpp"

    if-ne v10, v8, :cond_3

    const-string v8, "video/mpeg"

    goto :goto_1

    :cond_3
    const v8, 0x48323633

    if-ne v10, v8, :cond_4

    move-object v8, v11

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    :goto_1
    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/16 v23, 0x0

    const/16 v24, 0x8

    const/16 v25, 0x8

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    :goto_2
    sub-int v12, v7, v1

    if-ge v12, v2, :cond_5

    invoke-virtual {v0, v7}, Lk0/u;->G(I)V

    iget v12, v0, Lk0/u;->b:I

    invoke-virtual {v0}, Lk0/u;->g()I

    move-result v13

    if-nez v13, :cond_6

    iget v9, v0, Lk0/u;->b:I

    sub-int/2addr v9, v1

    if-ne v9, v2, :cond_6

    :cond_5
    move/from16 v27, v14

    move-object/from16 v36, v15

    move/from16 v7, v20

    move/from16 v32, v21

    move/from16 v34, v24

    move/from16 v35, v25

    const/4 v2, 0x0

    move-object/from16 v25, v3

    move/from16 v3, v22

    move/from16 v22, v18

    goto/16 :goto_45

    :cond_6
    if-lez v13, :cond_7

    const/4 v9, 0x1

    goto :goto_3

    :cond_7
    const/4 v9, 0x0

    :goto_3
    const-string v1, "childAtomSize must be positive"

    invoke-static {v1, v9}, LI0/b;->c(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lk0/u;->g()I

    move-result v9

    const v2, 0x61766343

    if-ne v9, v2, :cond_a

    if-nez v8, :cond_8

    const/4 v1, 0x1

    :goto_4
    const/4 v2, 0x0

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    goto :goto_4

    :goto_5
    invoke-static {v2, v1}, LI0/b;->c(Ljava/lang/String;Z)V

    add-int/lit8 v12, v12, 0x8

    invoke-virtual {v0, v12}, Lk0/u;->G(I)V

    invoke-static {v0}, LI0/f;->a(Lk0/u;)LI0/f;

    move-result-object v1

    iget-object v15, v1, LI0/f;->a:Ljava/util/ArrayList;

    iget v2, v1, LI0/f;->b:I

    iput v2, v4, LB4/p;->q:I

    if-nez v28, :cond_9

    iget v14, v1, LI0/f;->k:F

    :cond_9
    iget-object v2, v1, LI0/f;->l:Ljava/lang/String;

    iget v8, v1, LI0/f;->j:I

    iget v9, v1, LI0/f;->g:I

    iget v12, v1, LI0/f;->h:I

    move-object/from16 v16, v2

    iget v2, v1, LI0/f;->i:I

    move/from16 v19, v2

    iget v2, v1, LI0/f;->e:I

    iget v1, v1, LI0/f;->f:I

    const-string v20, "video/avc"

    move/from16 v35, v1

    move/from16 v24, v2

    move-object/from16 v25, v3

    move/from16 v30, v7

    move/from16 v21, v10

    move-object/from16 v31, v11

    move/from16 v32, v12

    move/from16 v22, v19

    const/4 v1, -0x1

    const/4 v2, 0x0

    move/from16 v19, v8

    move-object/from16 v8, v20

    move/from16 v20, v9

    goto/16 :goto_44

    :cond_a
    const v2, 0x68766343

    move/from16 v30, v7

    const-string v7, "video/hevc"

    if-ne v9, v2, :cond_e

    if-nez v8, :cond_b

    const/4 v1, 0x1

    :goto_6
    const/4 v2, 0x0

    goto :goto_7

    :cond_b
    const/4 v1, 0x0

    goto :goto_6

    :goto_7
    invoke-static {v2, v1}, LI0/b;->c(Ljava/lang/String;Z)V

    add-int/lit8 v12, v12, 0x8

    invoke-virtual {v0, v12}, Lk0/u;->G(I)V

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, LI0/z;->a(Lk0/u;ZLK1/c;)LI0/z;

    move-result-object v8

    iget-object v15, v8, LI0/z;->a:Ljava/util/List;

    iget v1, v8, LI0/z;->b:I

    iput v1, v4, LB4/p;->q:I

    if-nez v28, :cond_c

    iget v14, v8, LI0/z;->i:F

    :cond_c
    iget v1, v8, LI0/z;->j:I

    iget-object v2, v8, LI0/z;->k:Ljava/lang/String;

    iget v9, v8, LI0/z;->h:I

    const/4 v12, -0x1

    if-eq v9, v12, :cond_d

    move/from16 v18, v9

    :cond_d
    iget v9, v8, LI0/z;->e:I

    iget v12, v8, LI0/z;->f:I

    move/from16 v16, v1

    iget v1, v8, LI0/z;->g:I

    move/from16 v19, v1

    iget v1, v8, LI0/z;->c:I

    move/from16 v20, v1

    iget v1, v8, LI0/z;->d:I

    iget-object v8, v8, LI0/z;->l:LK1/c;

    move/from16 v35, v1

    move-object/from16 v25, v3

    move-object/from16 v27, v8

    move/from16 v21, v10

    move-object/from16 v31, v11

    move/from16 v32, v12

    move/from16 v22, v19

    move/from16 v24, v20

    const/4 v1, -0x1

    move-object v8, v7

    move/from16 v20, v9

    move/from16 v19, v16

    move-object/from16 v16, v2

    :goto_8
    const/4 v2, 0x0

    goto/16 :goto_44

    :cond_e
    const v2, 0x6c687643

    move-object/from16 v31, v11

    const/4 v11, 0x2

    if-ne v9, v2, :cond_1a

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "lhvC must follow hvcC atom"

    invoke-static {v2, v1}, LI0/b;->c(Ljava/lang/String;Z)V

    move-object/from16 v2, v27

    if-eqz v2, :cond_f

    iget-object v1, v2, LK1/c;->q:Ljava/lang/Object;

    check-cast v1, Lp3/H;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-lt v1, v11, :cond_f

    const/4 v1, 0x1

    goto :goto_9

    :cond_f
    const/4 v1, 0x0

    :goto_9
    const-string v7, "must have at least two layers"

    invoke-static {v7, v1}, LI0/b;->c(Ljava/lang/String;Z)V

    add-int/lit8 v12, v12, 0x8

    invoke-virtual {v0, v12}, Lk0/u;->G(I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, LI0/z;->a(Lk0/u;ZLK1/c;)LI0/z;

    move-result-object v7

    iget v1, v4, LB4/p;->q:I

    iget v8, v7, LI0/z;->b:I

    if-ne v1, v8, :cond_10

    const/4 v1, 0x1

    goto :goto_a

    :cond_10
    const/4 v1, 0x0

    :goto_a
    const-string v8, "nalUnitLengthFieldLength must be same for both hvcC and lhvC atoms"

    invoke-static {v8, v1}, LI0/b;->c(Ljava/lang/String;Z)V

    iget v1, v7, LI0/z;->e:I

    const/4 v12, -0x1

    move/from16 v8, v20

    if-eq v1, v12, :cond_12

    if-ne v8, v1, :cond_11

    const/4 v1, 0x1

    goto :goto_b

    :cond_11
    const/4 v1, 0x0

    :goto_b
    const-string v9, "colorSpace must be the same for both views"

    invoke-static {v9, v1}, LI0/b;->c(Ljava/lang/String;Z)V

    :cond_12
    iget v1, v7, LI0/z;->f:I

    move/from16 v9, v21

    if-eq v1, v12, :cond_14

    if-ne v9, v1, :cond_13

    const/4 v1, 0x1

    goto :goto_c

    :cond_13
    const/4 v1, 0x0

    :goto_c
    const-string v11, "colorRange must be the same for both views"

    invoke-static {v11, v1}, LI0/b;->c(Ljava/lang/String;Z)V

    :cond_14
    iget v1, v7, LI0/z;->g:I

    move/from16 v11, v22

    if-eq v1, v12, :cond_16

    if-ne v11, v1, :cond_15

    const/4 v1, 0x1

    goto :goto_d

    :cond_15
    const/4 v1, 0x0

    :goto_d
    const-string v12, "colorTransfer must be the same for both views"

    invoke-static {v12, v1}, LI0/b;->c(Ljava/lang/String;Z)V

    :cond_16
    iget v1, v7, LI0/z;->c:I

    move/from16 v12, v24

    if-ne v12, v1, :cond_17

    const/4 v1, 0x1

    :goto_e
    move/from16 v16, v8

    goto :goto_f

    :cond_17
    const/4 v1, 0x0

    goto :goto_e

    :goto_f
    const-string v8, "bitdepthLuma must be the same for both views"

    invoke-static {v8, v1}, LI0/b;->c(Ljava/lang/String;Z)V

    iget v1, v7, LI0/z;->d:I

    move/from16 v8, v25

    if-ne v8, v1, :cond_18

    const/4 v1, 0x1

    :goto_10
    move/from16 v20, v8

    goto :goto_11

    :cond_18
    const/4 v1, 0x0

    goto :goto_10

    :goto_11
    const-string v8, "bitdepthChroma must be the same for both views"

    invoke-static {v8, v1}, LI0/b;->c(Ljava/lang/String;Z)V

    if-eqz v15, :cond_19

    invoke-static {}, Lp3/H;->i()Lp3/E;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/play_billing/w;->c(Ljava/lang/Iterable;)V

    iget-object v8, v7, LI0/z;->a:Ljava/util/List;

    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/play_billing/w;->c(Ljava/lang/Iterable;)V

    invoke-virtual {v1}, Lp3/E;->i()Lp3/Y;

    move-result-object v15

    goto :goto_12

    :cond_19
    const-string v1, "initializationData must be already set from hvcC atom"

    const/4 v8, 0x0

    invoke-static {v1, v8}, LI0/b;->c(Ljava/lang/String;Z)V

    :goto_12
    iget-object v1, v7, LI0/z;->k:Ljava/lang/String;

    const-string v7, "video/mv-hevc"

    move-object/from16 v27, v2

    move-object/from16 v25, v3

    move-object v8, v7

    move/from16 v32, v9

    move/from16 v21, v10

    move/from16 v22, v11

    move/from16 v24, v12

    move/from16 v35, v20

    const/4 v2, 0x0

    move/from16 v20, v16

    move-object/from16 v16, v1

    const/4 v1, -0x1

    goto/16 :goto_44

    :cond_1a
    move/from16 v7, v20

    move/from16 v32, v21

    move/from16 v33, v22

    move/from16 v34, v24

    move/from16 v35, v25

    move-object/from16 v2, v27

    const v11, 0x76657875

    const/16 v21, 0x5

    if-ne v9, v11, :cond_2a

    add-int/lit8 v9, v12, 0x8

    invoke-virtual {v0, v9}, Lk0/u;->G(I)V

    iget v9, v0, Lk0/u;->b:I

    const/4 v11, 0x0

    :goto_13
    sub-int v4, v9, v12

    if-ge v4, v13, :cond_23

    invoke-virtual {v0, v9}, Lk0/u;->G(I)V

    invoke-virtual {v0}, Lk0/u;->g()I

    move-result v4

    move/from16 v24, v9

    if-lez v4, :cond_1b

    const/4 v9, 0x1

    goto :goto_14

    :cond_1b
    const/4 v9, 0x0

    :goto_14
    invoke-static {v1, v9}, LI0/b;->c(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lk0/u;->g()I

    move-result v9

    move-object/from16 v25, v3

    const v3, 0x65796573

    if-ne v9, v3, :cond_22

    add-int/lit8 v9, v24, 0x8

    invoke-virtual {v0, v9}, Lk0/u;->G(I)V

    iget v3, v0, Lk0/u;->b:I

    :goto_15
    sub-int v9, v3, v24

    if-ge v9, v4, :cond_21

    invoke-virtual {v0, v3}, Lk0/u;->G(I)V

    invoke-virtual {v0}, Lk0/u;->g()I

    move-result v9

    if-lez v9, :cond_1c

    const/4 v11, 0x1

    goto :goto_16

    :cond_1c
    const/4 v11, 0x0

    :goto_16
    invoke-static {v1, v11}, LI0/b;->c(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lk0/u;->g()I

    move-result v11

    move-object/from16 v27, v1

    const v1, 0x73747269

    if-ne v11, v1, :cond_20

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lk0/u;->H(I)V

    invoke-virtual {v0}, Lk0/u;->u()I

    move-result v1

    new-instance v3, LL2/o;

    new-instance v9, LK1/j;

    and-int/lit8 v11, v1, 0x1

    move/from16 v36, v1

    const/4 v1, 0x1

    if-ne v11, v1, :cond_1d

    const/4 v1, 0x1

    goto :goto_17

    :cond_1d
    const/4 v1, 0x0

    :goto_17
    and-int/lit8 v11, v36, 0x2

    move/from16 v37, v4

    const/4 v4, 0x2

    if-ne v11, v4, :cond_1e

    const/4 v4, 0x1

    goto :goto_18

    :cond_1e
    const/4 v4, 0x0

    :goto_18
    and-int/lit8 v11, v36, 0x8

    move-object/from16 v36, v15

    const/16 v15, 0x8

    if-ne v11, v15, :cond_1f

    const/4 v11, 0x1

    goto :goto_19

    :cond_1f
    const/4 v11, 0x0

    :goto_19
    invoke-direct {v9, v1, v4, v11}, LK1/j;-><init>(ZZZ)V

    invoke-direct {v3, v9}, LL2/o;-><init>(Ljava/lang/Object;)V

    goto :goto_1a

    :cond_20
    move/from16 v37, v4

    move-object/from16 v36, v15

    add-int/2addr v3, v9

    move-object/from16 v1, v27

    goto :goto_15

    :cond_21
    move-object/from16 v27, v1

    move/from16 v37, v4

    move-object/from16 v36, v15

    const/4 v3, 0x0

    :goto_1a
    move-object v11, v3

    goto :goto_1b

    :cond_22
    move-object/from16 v27, v1

    move/from16 v37, v4

    move-object/from16 v36, v15

    :goto_1b
    add-int v9, v24, v37

    move-object/from16 v3, v25

    move-object/from16 v1, v27

    move-object/from16 v15, v36

    goto/16 :goto_13

    :cond_23
    move-object/from16 v25, v3

    move-object/from16 v36, v15

    if-nez v11, :cond_24

    const/4 v1, 0x0

    goto :goto_1c

    :cond_24
    new-instance v1, LL2/o;

    invoke-direct {v1, v11}, LL2/o;-><init>(Ljava/lang/Object;)V

    :goto_1c
    if-eqz v1, :cond_26

    iget-object v1, v1, LL2/o;->b:Ljava/lang/Object;

    check-cast v1, LL2/o;

    iget-object v1, v1, LL2/o;->b:Ljava/lang/Object;

    check-cast v1, LK1/j;

    if-eqz v2, :cond_27

    iget-object v3, v2, LK1/c;->q:Ljava/lang/Object;

    check-cast v3, Lp3/H;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_27

    iget-boolean v3, v1, LK1/j;->a:Z

    if-eqz v3, :cond_25

    iget-boolean v3, v1, LK1/j;->b:Z

    if-eqz v3, :cond_25

    const/4 v3, 0x1

    goto :goto_1d

    :cond_25
    const/4 v3, 0x0

    :goto_1d
    const-string v4, "both eye views must be marked as available"

    invoke-static {v4, v3}, LI0/b;->c(Ljava/lang/String;Z)V

    iget-boolean v1, v1, LK1/j;->c:Z

    const/16 v29, 0x1

    xor-int/lit8 v1, v1, 0x1

    const-string v3, "for MV-HEVC, eye_views_reversed must be set to false"

    invoke-static {v3, v1}, LI0/b;->c(Ljava/lang/String;Z)V

    :cond_26
    move/from16 v3, v18

    goto :goto_1e

    :cond_27
    move/from16 v3, v18

    const/4 v12, -0x1

    if-ne v3, v12, :cond_29

    iget-boolean v1, v1, LK1/j;->c:Z

    if-eqz v1, :cond_28

    move/from16 v18, v21

    goto :goto_1f

    :cond_28
    const/16 v18, 0x4

    goto :goto_1f

    :cond_29
    :goto_1e
    move/from16 v18, v3

    :goto_1f
    move-object/from16 v27, v2

    :goto_20
    move/from16 v20, v7

    move/from16 v21, v10

    move/from16 v22, v33

    move/from16 v24, v34

    move-object/from16 v15, v36

    :goto_21
    const/4 v1, -0x1

    goto/16 :goto_8

    :cond_2a
    move-object/from16 v25, v3

    move-object/from16 v36, v15

    move/from16 v3, v18

    const v1, 0x64766343

    if-eq v9, v1, :cond_2b

    const v1, 0x64767643

    if-ne v9, v1, :cond_2c

    :cond_2b
    move-object/from16 v18, v2

    move/from16 v22, v3

    move/from16 v21, v10

    move/from16 v27, v14

    move/from16 v3, v33

    const/4 v1, -0x1

    const/4 v2, 0x0

    goto/16 :goto_43

    :cond_2c
    const v1, 0x76706343

    const/16 v18, 0xa

    const/16 v4, 0xc

    const/16 v24, 0x7

    if-ne v9, v1, :cond_32

    if-nez v8, :cond_2d

    const/4 v1, 0x1

    :goto_22
    const/4 v7, 0x0

    goto :goto_23

    :cond_2d
    const/4 v1, 0x0

    goto :goto_22

    :goto_23
    invoke-static {v7, v1}, LI0/b;->c(Ljava/lang/String;Z)V

    const v1, 0x76703038

    const-string v7, "video/x-vnd.on2.vp9"

    if-ne v10, v1, :cond_2e

    const-string v1, "video/x-vnd.on2.vp8"

    goto :goto_24

    :cond_2e
    move-object v1, v7

    :goto_24
    add-int/lit8 v12, v12, 0xc

    invoke-virtual {v0, v12}, Lk0/u;->G(I)V

    invoke-virtual {v0}, Lk0/u;->u()I

    move-result v8

    int-to-byte v8, v8

    invoke-virtual {v0}, Lk0/u;->u()I

    move-result v9

    int-to-byte v9, v9

    invoke-virtual {v0}, Lk0/u;->u()I

    move-result v12

    const/16 v27, 0x6

    shr-int/lit8 v11, v12, 0x4

    shr-int/lit8 v32, v12, 0x1

    const/16 v37, 0x3

    and-int/lit8 v15, v32, 0x7

    int-to-byte v15, v15

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    int-to-byte v7, v11

    sget-object v32, Lk0/e;->a:[B

    new-array v4, v4, [B

    const/16 v29, 0x1

    const/16 v32, 0x0

    aput-byte v29, v4, v32

    aput-byte v29, v4, v29

    const/16 v20, 0x2

    aput-byte v8, v4, v20

    aput-byte v20, v4, v37

    const/16 v22, 0x4

    aput-byte v29, v4, v22

    aput-byte v9, v4, v21

    aput-byte v37, v4, v27

    aput-byte v29, v4, v24

    const/16 v8, 0x8

    aput-byte v7, v4, v8

    const/16 v7, 0x9

    aput-byte v22, v4, v7

    aput-byte v29, v4, v18

    const/16 v7, 0xb

    aput-byte v15, v4, v7

    invoke-static {v4}, Lp3/H;->n(Ljava/lang/Object;)Lp3/Y;

    move-result-object v15

    goto :goto_25

    :cond_2f
    move-object/from16 v15, v36

    :goto_25
    and-int/lit8 v4, v12, 0x1

    if-eqz v4, :cond_30

    const/4 v4, 0x1

    goto :goto_26

    :cond_30
    const/4 v4, 0x0

    :goto_26
    invoke-virtual {v0}, Lk0/u;->u()I

    move-result v7

    invoke-virtual {v0}, Lk0/u;->u()I

    move-result v8

    invoke-static {v7}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v7

    if-eqz v4, :cond_31

    const/16 v21, 0x1

    goto :goto_27

    :cond_31
    const/16 v21, 0x2

    :goto_27
    invoke-static {v8}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v22

    move-object v8, v1

    move-object/from16 v27, v2

    move/from16 v18, v3

    move/from16 v20, v7

    move/from16 v24, v11

    move/from16 v35, v24

    move/from16 v32, v21

    const/4 v1, -0x1

    const/4 v2, 0x0

    move/from16 v21, v10

    goto/16 :goto_44

    :cond_32
    const/16 v27, 0x6

    const/16 v37, 0x3

    const v1, 0x61763143

    const-string v11, "BoxParsers"

    if-ne v9, v1, :cond_4d

    add-int/lit8 v1, v13, -0x8

    new-array v7, v1, [B

    const/4 v15, 0x0

    invoke-virtual {v0, v7, v15, v1}, Lk0/u;->e([BII)V

    invoke-static {v7}, Lp3/H;->n(Ljava/lang/Object;)Lp3/Y;

    move-result-object v1

    add-int/lit8 v12, v12, 0x8

    invoke-virtual {v0, v12}, Lk0/u;->G(I)V

    new-instance v7, Landroidx/media3/common/ColorInfo$Builder;

    invoke-direct {v7}, Landroidx/media3/common/ColorInfo$Builder;-><init>()V

    new-instance v8, LI0/N;

    iget-object v9, v0, Lk0/u;->a:[B

    array-length v12, v9

    invoke-direct {v8, v9, v12}, LI0/N;-><init>([BI)V

    iget v9, v0, Lk0/u;->b:I

    const/16 v12, 0x8

    mul-int/2addr v9, v12

    invoke-virtual {v8, v9}, LI0/N;->q(I)V

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, LI0/N;->u(I)V

    move/from16 v9, v37

    invoke-virtual {v8, v9}, LI0/N;->i(I)I

    move-result v12

    move/from16 v9, v27

    invoke-virtual {v8, v9}, LI0/N;->t(I)V

    invoke-virtual {v8}, LI0/N;->h()Z

    move-result v9

    invoke-virtual {v8}, LI0/N;->h()Z

    move-result v27

    const/4 v15, 0x2

    if-ne v12, v15, :cond_36

    if-eqz v9, :cond_35

    if-eqz v27, :cond_33

    move v9, v4

    goto :goto_28

    :cond_33
    move/from16 v9, v18

    :goto_28
    invoke-virtual {v7, v9}, Landroidx/media3/common/ColorInfo$Builder;->setLumaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    if-eqz v27, :cond_34

    move v9, v4

    goto :goto_29

    :cond_34
    move/from16 v9, v18

    :goto_29
    invoke-virtual {v7, v9}, Landroidx/media3/common/ColorInfo$Builder;->setChromaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    goto :goto_2c

    :cond_35
    const/4 v15, 0x2

    :cond_36
    if-gt v12, v15, :cond_39

    if-eqz v9, :cond_37

    move/from16 v12, v18

    goto :goto_2a

    :cond_37
    const/16 v12, 0x8

    :goto_2a
    invoke-virtual {v7, v12}, Landroidx/media3/common/ColorInfo$Builder;->setLumaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    if-eqz v9, :cond_38

    move/from16 v9, v18

    goto :goto_2b

    :cond_38
    const/16 v9, 0x8

    :goto_2b
    invoke-virtual {v7, v9}, Landroidx/media3/common/ColorInfo$Builder;->setChromaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    :cond_39
    :goto_2c
    const/16 v9, 0xd

    invoke-virtual {v8, v9}, LI0/N;->t(I)V

    invoke-virtual {v8}, LI0/N;->s()V

    const/4 v12, 0x4

    invoke-virtual {v8, v12}, LI0/N;->i(I)I

    move-result v15

    const/4 v12, 0x1

    if-eq v15, v12, :cond_3a

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "Unsupported obu_type: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Lk0/c;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v4

    goto/16 :goto_32

    :cond_3a
    invoke-virtual {v8}, LI0/N;->h()Z

    move-result v12

    if-eqz v12, :cond_3b

    const-string v4, "Unsupported obu_extension_flag"

    invoke-static {v11, v4}, Lk0/c;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v4

    goto/16 :goto_32

    :cond_3b
    invoke-virtual {v8}, LI0/N;->h()Z

    move-result v12

    invoke-virtual {v8}, LI0/N;->s()V

    if-eqz v12, :cond_3c

    const/16 v12, 0x8

    invoke-virtual {v8, v12}, LI0/N;->i(I)I

    move-result v15

    const/16 v12, 0x7f

    if-le v15, v12, :cond_3c

    const-string v4, "Excessive obu_size"

    invoke-static {v11, v4}, Lk0/c;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v4

    goto/16 :goto_32

    :cond_3c
    const/4 v12, 0x3

    invoke-virtual {v8, v12}, LI0/N;->i(I)I

    move-result v15

    invoke-virtual {v8}, LI0/N;->s()V

    invoke-virtual {v8}, LI0/N;->h()Z

    move-result v12

    if-eqz v12, :cond_3d

    const-string v4, "Unsupported reduced_still_picture_header"

    invoke-static {v11, v4}, Lk0/c;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v4

    goto/16 :goto_32

    :cond_3d
    invoke-virtual {v8}, LI0/N;->h()Z

    move-result v12

    if-eqz v12, :cond_3e

    const-string v4, "Unsupported timing_info_present_flag"

    invoke-static {v11, v4}, Lk0/c;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v4

    goto/16 :goto_32

    :cond_3e
    invoke-virtual {v8}, LI0/N;->h()Z

    move-result v12

    if-eqz v12, :cond_3f

    const-string v4, "Unsupported initial_display_delay_present_flag"

    invoke-static {v11, v4}, Lk0/c;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v4

    goto/16 :goto_32

    :cond_3f
    move/from16 v11, v21

    invoke-virtual {v8, v11}, LI0/N;->i(I)I

    move-result v12

    const/4 v9, 0x0

    :goto_2d
    if-gt v9, v12, :cond_41

    invoke-virtual {v8, v4}, LI0/N;->t(I)V

    invoke-virtual {v8, v11}, LI0/N;->i(I)I

    move-result v4

    move/from16 v11, v24

    if-le v4, v11, :cond_40

    invoke-virtual {v8}, LI0/N;->s()V

    :cond_40
    add-int/lit8 v9, v9, 0x1

    const/16 v4, 0xc

    const/4 v11, 0x5

    const/16 v24, 0x7

    goto :goto_2d

    :cond_41
    const/4 v4, 0x4

    invoke-virtual {v8, v4}, LI0/N;->i(I)I

    move-result v9

    invoke-virtual {v8, v4}, LI0/N;->i(I)I

    move-result v4

    const/16 v29, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, LI0/N;->t(I)V

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v8, v4}, LI0/N;->t(I)V

    invoke-virtual {v8}, LI0/N;->h()Z

    move-result v4

    const/4 v11, 0x7

    if-eqz v4, :cond_42

    invoke-virtual {v8, v11}, LI0/N;->t(I)V

    :cond_42
    invoke-virtual {v8, v11}, LI0/N;->t(I)V

    invoke-virtual {v8}, LI0/N;->h()Z

    move-result v4

    if-eqz v4, :cond_43

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, LI0/N;->t(I)V

    :cond_43
    invoke-virtual {v8}, LI0/N;->h()Z

    move-result v9

    if-eqz v9, :cond_44

    const/4 v9, 0x1

    const/4 v11, 0x2

    goto :goto_2e

    :cond_44
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, LI0/N;->i(I)I

    move-result v11

    :goto_2e
    if-lez v11, :cond_45

    invoke-virtual {v8}, LI0/N;->h()Z

    move-result v11

    if-nez v11, :cond_45

    invoke-virtual {v8, v9}, LI0/N;->t(I)V

    :cond_45
    const/4 v9, 0x3

    if-eqz v4, :cond_46

    invoke-virtual {v8, v9}, LI0/N;->t(I)V

    :cond_46
    invoke-virtual {v8, v9}, LI0/N;->t(I)V

    invoke-virtual {v8}, LI0/N;->h()Z

    move-result v4

    const/4 v9, 0x2

    if-ne v15, v9, :cond_47

    if-eqz v4, :cond_47

    invoke-virtual {v8}, LI0/N;->s()V

    :cond_47
    const/4 v9, 0x1

    if-eq v15, v9, :cond_48

    invoke-virtual {v8}, LI0/N;->h()Z

    move-result v4

    if-eqz v4, :cond_48

    const/4 v4, 0x1

    goto :goto_2f

    :cond_48
    const/4 v4, 0x0

    :goto_2f
    invoke-virtual {v8}, LI0/N;->h()Z

    move-result v9

    if-eqz v9, :cond_4c

    const/16 v15, 0x8

    invoke-virtual {v8, v15}, LI0/N;->i(I)I

    move-result v9

    invoke-virtual {v8, v15}, LI0/N;->i(I)I

    move-result v11

    invoke-virtual {v8, v15}, LI0/N;->i(I)I

    move-result v12

    if-nez v4, :cond_49

    const/4 v4, 0x1

    if-ne v9, v4, :cond_4a

    const/16 v15, 0xd

    if-ne v11, v15, :cond_4a

    if-nez v12, :cond_4a

    move v8, v4

    goto :goto_30

    :cond_49
    const/4 v4, 0x1

    :cond_4a
    invoke-virtual {v8, v4}, LI0/N;->i(I)I

    move-result v29

    move/from16 v8, v29

    :goto_30
    invoke-static {v9}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroidx/media3/common/ColorInfo$Builder;->setColorSpace(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v9

    if-ne v8, v4, :cond_4b

    const/4 v4, 0x1

    goto :goto_31

    :cond_4b
    const/4 v4, 0x2

    :goto_31
    invoke-virtual {v9, v4}, Landroidx/media3/common/ColorInfo$Builder;->setColorRange(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v4

    invoke-static {v11}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroidx/media3/common/ColorInfo$Builder;->setColorTransfer(I)Landroidx/media3/common/ColorInfo$Builder;

    :cond_4c
    invoke-virtual {v7}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v4

    :goto_32
    iget v7, v4, Landroidx/media3/common/ColorInfo;->lumaBitdepth:I

    iget v8, v4, Landroidx/media3/common/ColorInfo;->chromaBitdepth:I

    iget v9, v4, Landroidx/media3/common/ColorInfo;->colorSpace:I

    iget v11, v4, Landroidx/media3/common/ColorInfo;->colorRange:I

    iget v4, v4, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    const-string v12, "video/av01"

    move-object v15, v1

    move-object/from16 v27, v2

    move/from16 v18, v3

    move/from16 v22, v4

    move/from16 v24, v7

    move/from16 v35, v8

    move/from16 v20, v9

    move/from16 v21, v10

    move/from16 v32, v11

    move-object v8, v12

    goto/16 :goto_21

    :cond_4d
    const v1, 0x636c6c69

    const/16 v4, 0x19

    if-ne v9, v1, :cond_4f

    if-nez v23, :cond_4e

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v23

    :cond_4e
    move-object/from16 v1, v23

    const/16 v4, 0x15

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Lk0/u;->r()S

    move-result v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Lk0/u;->r()S

    move-result v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v23, v1

    move-object/from16 v27, v2

    move/from16 v18, v3

    goto/16 :goto_20

    :cond_4f
    const v1, 0x6d646376

    if-ne v9, v1, :cond_51

    if-nez v23, :cond_50

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v23

    :cond_50
    move-object/from16 v1, v23

    invoke-virtual {v0}, Lk0/u;->r()S

    move-result v4

    invoke-virtual {v0}, Lk0/u;->r()S

    move-result v9

    invoke-virtual {v0}, Lk0/u;->r()S

    move-result v11

    invoke-virtual {v0}, Lk0/u;->r()S

    move-result v12

    invoke-virtual {v0}, Lk0/u;->r()S

    move-result v15

    move-object/from16 v18, v2

    invoke-virtual {v0}, Lk0/u;->r()S

    move-result v2

    move/from16 v21, v10

    invoke-virtual {v0}, Lk0/u;->r()S

    move-result v10

    move/from16 v22, v3

    invoke-virtual {v0}, Lk0/u;->r()S

    move-result v3

    invoke-virtual {v0}, Lk0/u;->w()J

    move-result-wide v23

    invoke-virtual {v0}, Lk0/u;->w()J

    move-result-wide v37

    move/from16 v27, v14

    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v2, 0x2710

    div-long v9, v23, v2

    long-to-int v4, v9

    int-to-short v4, v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    div-long v2, v37, v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v23, v1

    move/from16 v20, v7

    move/from16 v14, v27

    move/from16 v24, v34

    move-object/from16 v15, v36

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_33
    move-object/from16 v27, v18

    move/from16 v18, v22

    move/from16 v22, v33

    goto/16 :goto_44

    :cond_51
    move-object/from16 v18, v2

    move/from16 v22, v3

    move/from16 v21, v10

    move/from16 v27, v14

    const v1, 0x64323633

    if-ne v9, v1, :cond_53

    if-nez v8, :cond_52

    const/4 v9, 0x1

    :goto_34
    const/4 v2, 0x0

    goto :goto_35

    :cond_52
    const/4 v9, 0x0

    goto :goto_34

    :goto_35
    invoke-static {v2, v9}, LI0/b;->c(Ljava/lang/String;Z)V

    move/from16 v20, v7

    move/from16 v14, v27

    move-object/from16 v8, v31

    :goto_36
    move/from16 v24, v34

    move-object/from16 v15, v36

    :goto_37
    const/4 v1, -0x1

    goto :goto_33

    :cond_53
    const/4 v2, 0x0

    const v1, 0x65736473

    if-ne v9, v1, :cond_56

    if-nez v8, :cond_54

    const/4 v9, 0x1

    goto :goto_38

    :cond_54
    const/4 v9, 0x0

    :goto_38
    invoke-static {v2, v9}, LI0/b;->c(Ljava/lang/String;Z)V

    invoke-static {v0, v12}, Lc1/d;->b(Lk0/u;I)Landroidx/media3/exoplayer/source/Z;

    move-result-object v1

    iget-object v3, v1, Landroidx/media3/exoplayer/source/Z;->r:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v1, Landroidx/media3/exoplayer/source/Z;->s:Ljava/lang/Object;

    check-cast v4, [B

    if-eqz v4, :cond_55

    invoke-static {v4}, Lp3/H;->n(Ljava/lang/Object;)Lp3/Y;

    move-result-object v15

    goto :goto_39

    :cond_55
    move-object/from16 v15, v36

    :goto_39
    move-object/from16 v26, v1

    move-object v8, v3

    move/from16 v20, v7

    move/from16 v14, v27

    move/from16 v24, v34

    goto :goto_37

    :cond_56
    const v1, 0x70617370

    if-ne v9, v1, :cond_57

    add-int/lit8 v12, v12, 0x8

    invoke-virtual {v0, v12}, Lk0/u;->G(I)V

    invoke-virtual {v0}, Lk0/u;->y()I

    move-result v1

    invoke-virtual {v0}, Lk0/u;->y()I

    move-result v3

    int-to-float v1, v1

    int-to-float v3, v3

    div-float/2addr v1, v3

    move v14, v1

    move/from16 v20, v7

    move-object/from16 v27, v18

    move/from16 v18, v22

    move/from16 v22, v33

    move/from16 v24, v34

    move-object/from16 v15, v36

    const/4 v1, -0x1

    const/16 v28, 0x1

    goto/16 :goto_44

    :cond_57
    const v1, 0x73763364

    if-ne v9, v1, :cond_5a

    add-int/lit8 v1, v12, 0x8

    :goto_3a
    sub-int v3, v1, v12

    if-ge v3, v13, :cond_59

    invoke-virtual {v0, v1}, Lk0/u;->G(I)V

    invoke-virtual {v0}, Lk0/u;->g()I

    move-result v3

    invoke-virtual {v0}, Lk0/u;->g()I

    move-result v4

    const v9, 0x70726f6a

    if-ne v4, v9, :cond_58

    iget-object v4, v0, Lk0/u;->a:[B

    add-int/2addr v3, v1

    invoke-static {v4, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    move-object/from16 v17, v1

    goto :goto_3b

    :cond_58
    add-int/2addr v1, v3

    goto :goto_3a

    :cond_59
    move-object/from16 v17, v2

    :goto_3b
    move/from16 v20, v7

    move/from16 v14, v27

    goto/16 :goto_36

    :cond_5a
    const v1, 0x73743364

    if-ne v9, v1, :cond_60

    invoke-virtual {v0}, Lk0/u;->u()I

    move-result v1

    const/4 v9, 0x3

    invoke-virtual {v0, v9}, Lk0/u;->H(I)V

    if-nez v1, :cond_5e

    invoke-virtual {v0}, Lk0/u;->u()I

    move-result v1

    if-eqz v1, :cond_5d

    const/4 v12, 0x1

    if-eq v1, v12, :cond_5c

    const/4 v15, 0x2

    if-eq v1, v15, :cond_5b

    if-eq v1, v9, :cond_5f

    goto :goto_3c

    :cond_5b
    const/4 v9, 0x2

    goto :goto_3d

    :cond_5c
    move v9, v12

    goto :goto_3d

    :cond_5d
    const/4 v9, 0x0

    goto :goto_3d

    :cond_5e
    :goto_3c
    move/from16 v9, v22

    :cond_5f
    :goto_3d
    move/from16 v20, v7

    move/from16 v14, v27

    move/from16 v22, v33

    move/from16 v24, v34

    move-object/from16 v15, v36

    const/4 v1, -0x1

    move-object/from16 v27, v18

    move/from16 v18, v9

    goto/16 :goto_44

    :cond_60
    const/4 v12, 0x1

    const v1, 0x636f6c72

    if-ne v9, v1, :cond_65

    const/4 v1, -0x1

    move/from16 v3, v33

    if-ne v7, v1, :cond_66

    if-ne v3, v1, :cond_66

    invoke-virtual {v0}, Lk0/u;->g()I

    move-result v4

    const v9, 0x6e636c78

    if-eq v4, v9, :cond_62

    const v9, 0x6e636c63

    if-ne v4, v9, :cond_61

    goto :goto_3e

    :cond_61
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Unsupported color type: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, LU2/e;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42

    :cond_62
    :goto_3e
    invoke-virtual {v0}, Lk0/u;->A()I

    move-result v3

    invoke-virtual {v0}, Lk0/u;->A()I

    move-result v4

    const/4 v15, 0x2

    invoke-virtual {v0, v15}, Lk0/u;->H(I)V

    const/16 v7, 0x13

    if-ne v13, v7, :cond_63

    invoke-virtual {v0}, Lk0/u;->u()I

    move-result v7

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_63

    move v7, v12

    goto :goto_3f

    :cond_63
    const/4 v7, 0x0

    :goto_3f
    invoke-static {v3}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v20

    if-eqz v7, :cond_64

    goto :goto_40

    :cond_64
    move v12, v15

    :goto_40
    invoke-static {v4}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v3

    move/from16 v32, v12

    :goto_41
    move/from16 v14, v27

    move/from16 v24, v34

    move-object/from16 v15, v36

    move-object/from16 v27, v18

    move/from16 v18, v22

    move/from16 v22, v3

    goto :goto_44

    :cond_65
    move/from16 v3, v33

    const/4 v1, -0x1

    :cond_66
    :goto_42
    move/from16 v20, v7

    goto :goto_41

    :goto_43
    invoke-static {v0}, LE1/a;->f(Lk0/u;)LE1/a;

    move-result-object v4

    if-eqz v4, :cond_66

    iget-object v4, v4, LE1/a;->q:Ljava/lang/String;

    const-string v8, "video/dolby-vision"

    move-object/from16 v16, v4

    goto :goto_42

    :goto_44
    add-int v7, v30, v13

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v4, p7

    move/from16 v10, v21

    move-object/from16 v3, v25

    move-object/from16 v11, v31

    move/from16 v21, v32

    move/from16 v25, v35

    goto/16 :goto_2

    :goto_45
    if-nez v8, :cond_67

    return-void

    :cond_67
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move-object/from16 v9, v16

    invoke-virtual {v0, v9}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move/from16 v14, v27

    invoke-virtual {v0, v14}, Landroidx/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setRotationDegrees(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move-object/from16 v9, v17

    invoke-virtual {v0, v9}, Landroidx/media3/common/Format$Builder;->setProjectionData([B)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move/from16 v12, v22

    invoke-virtual {v0, v12}, Landroidx/media3/common/Format$Builder;->setStereoMode(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move-object/from16 v9, v36

    invoke-virtual {v0, v9}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move/from16 v12, v19

    invoke-virtual {v0, v12}, Landroidx/media3/common/Format$Builder;->setMaxNumReorderSamples(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    new-instance v1, Landroidx/media3/common/ColorInfo$Builder;

    invoke-direct {v1}, Landroidx/media3/common/ColorInfo$Builder;-><init>()V

    invoke-virtual {v1, v7}, Landroidx/media3/common/ColorInfo$Builder;->setColorSpace(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v1

    move/from16 v9, v32

    invoke-virtual {v1, v9}, Landroidx/media3/common/ColorInfo$Builder;->setColorRange(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/media3/common/ColorInfo$Builder;->setColorTransfer(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v1

    if-eqz v23, :cond_68

    invoke-virtual/range {v23 .. v23}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    goto :goto_46

    :cond_68
    move-object v9, v2

    :goto_46
    invoke-virtual {v1, v9}, Landroidx/media3/common/ColorInfo$Builder;->setHdrStaticInfo([B)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v1

    move/from16 v12, v34

    invoke-virtual {v1, v12}, Landroidx/media3/common/ColorInfo$Builder;->setLumaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v1

    move/from16 v8, v35

    invoke-virtual {v1, v8}, Landroidx/media3/common/ColorInfo$Builder;->setChromaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move-object/from16 v9, v26

    if-eqz v9, :cond_69

    iget-wide v1, v9, Landroidx/media3/exoplayer/source/Z;->b:J

    invoke-static {v1, v2}, La/a;->H(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget-wide v2, v9, Landroidx/media3/exoplayer/source/Z;->q:J

    invoke-static {v2, v3}, La/a;->H(J)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    :cond_69
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    move-object/from16 v4, p7

    iput-object v0, v4, LB4/p;->t:Ljava/lang/Object;

    return-void
.end method
