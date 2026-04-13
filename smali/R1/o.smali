.class public final LR1/o;
.super Ljava/lang/Object;

# interfaces
.implements LI1/e;


# static fields
.field public static final a:[B

.field public static final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "Exif\u0000\u0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, LR1/o;->a:[B

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, LR1/o;->b:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
    .end array-data
.end method

.method public static e(LR1/n;LL1/g;)I
    .locals 7

    const-string v0, "Parser doesn\'t handle magic number: "

    const/4 v1, -0x1

    :try_start_0
    invoke-interface {p0}, LR1/n;->c()I

    move-result v2
    :try_end_0
    .catch LR1/m; {:try_start_0 .. :try_end_0} :catch_0

    const v3, 0xffd8

    and-int v4, v2, v3

    const/4 v5, 0x3

    const-string v6, "DfltImageHeaderParser"

    if-eq v4, v3, :cond_1

    const/16 v3, 0x4d4d

    if-eq v2, v3, :cond_1

    const/16 v3, 0x4949

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    :goto_0
    invoke-static {p0}, LR1/o;->g(LR1/n;)I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "Failed to parse exif segment length, or exif segment not found"

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const-class v2, [B

    invoke-virtual {p1, v0, v2}, LL1/g;->c(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B
    :try_end_1
    .catch LR1/m; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-static {p0, v2, v0}, LR1/o;->h(LR1/n;[BI)I

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p1, v2}, LL1/g;->g(Ljava/lang/Object;)V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p1, v2}, LL1/g;->g(Ljava/lang/Object;)V

    throw p0
    :try_end_3
    .catch LR1/m; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_3
    return v1
.end method

.method public static f(LR1/n;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 8

    :try_start_0
    invoke-interface {p0}, LR1/n;->c()I

    move-result v0

    const v1, 0xffd8

    if-ne v0, v1, :cond_0

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_0
    shl-int/lit8 v0, v0, 0x8

    invoke-interface {p0}, LR1/n;->i()S

    move-result v1

    or-int/2addr v0, v1

    const v1, 0x474946

    if-ne v0, v1, :cond_1

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_1
    shl-int/lit8 v0, v0, 0x8

    invoke-interface {p0}, LR1/n;->i()S

    move-result v1

    or-int/2addr v0, v1

    const v1, -0x76afb1b9

    if-ne v0, v1, :cond_3

    const-wide/16 v0, 0x15

    invoke-interface {p0, v0, v1}, LR1/n;->skip(J)J
    :try_end_0
    .catch LR1/m; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {p0}, LR1/n;->i()S

    move-result p0

    const/4 v0, 0x3

    if-lt p0, v0, :cond_2

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_2
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    :try_end_1
    .catch LR1/m; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    :try_start_2
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_3
    const v1, 0x52494646

    const-wide/16 v2, 0x4

    if-eq v0, v1, :cond_b

    invoke-interface {p0}, LR1/n;->c()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    invoke-interface {p0}, LR1/n;->c()I

    move-result v4

    or-int/2addr v1, v4

    const v4, 0x66747970

    if-eq v1, v4, :cond_4

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_4
    invoke-interface {p0}, LR1/n;->c()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    invoke-interface {p0}, LR1/n;->c()I

    move-result v4

    or-int/2addr v1, v4

    const v4, 0x61766973

    if-ne v1, v4, :cond_5

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->ANIMATED_AVIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_5
    const/4 v5, 0x0

    const v6, 0x61766966

    const/4 v7, 0x1

    if-ne v1, v6, :cond_6

    move v1, v7

    goto :goto_0

    :cond_6
    move v1, v5

    :goto_0
    invoke-interface {p0, v2, v3}, LR1/n;->skip(J)J

    add-int/lit8 v0, v0, -0x10

    rem-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_9

    :goto_1
    const/4 v2, 0x5

    if-ge v5, v2, :cond_9

    if-lez v0, :cond_9

    invoke-interface {p0}, LR1/n;->c()I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    invoke-interface {p0}, LR1/n;->c()I

    move-result v3

    or-int/2addr v2, v3

    if-ne v2, v4, :cond_7

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->ANIMATED_AVIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_7
    if-ne v2, v6, :cond_8

    move v1, v7

    :cond_8
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v0, v0, -0x4

    goto :goto_1

    :cond_9
    if-eqz v1, :cond_a

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->AVIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_a
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_b
    invoke-interface {p0, v2, v3}, LR1/n;->skip(J)J

    invoke-interface {p0}, LR1/n;->c()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-interface {p0}, LR1/n;->c()I

    move-result v1

    or-int/2addr v0, v1

    const v1, 0x57454250

    if-eq v0, v1, :cond_c

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_c
    invoke-interface {p0}, LR1/n;->c()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-interface {p0}, LR1/n;->c()I

    move-result v1

    or-int/2addr v0, v1

    and-int/lit16 v1, v0, -0x100

    const v4, 0x56503800

    if-eq v1, v4, :cond_d

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_d
    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x58

    if-ne v0, v1, :cond_10

    invoke-interface {p0, v2, v3}, LR1/n;->skip(J)J

    invoke-interface {p0}, LR1/n;->i()S

    move-result p0

    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_e

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->ANIMATED_WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_e
    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_f

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_f
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_10
    const/16 v1, 0x4c

    if-ne v0, v1, :cond_12

    invoke-interface {p0, v2, v3}, LR1/n;->skip(J)J

    invoke-interface {p0}, LR1/n;->i()S

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_11

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_11
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_12
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    :try_end_2
    .catch LR1/m; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0
.end method

.method public static g(LR1/n;)I
    .locals 9

    :cond_0
    invoke-interface {p0}, LR1/n;->i()S

    move-result v0

    const/16 v1, 0xff

    const/4 v2, 0x3

    const/4 v3, -0x1

    const-string v4, "DfltImageHeaderParser"

    if-eq v0, v1, :cond_1

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown segmentId="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-interface {p0}, LR1/n;->i()S

    move-result v0

    const/16 v1, 0xda

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0xd9

    if-ne v0, v1, :cond_3

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "Found MARKER_EOI in exif segment"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    invoke-interface {p0}, LR1/n;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/16 v5, 0xe1

    if-eq v0, v5, :cond_5

    int-to-long v5, v1

    invoke-interface {p0, v5, v6}, LR1/n;->skip(J)J

    move-result-wide v7

    cmp-long v5, v7, v5

    if-eqz v5, :cond_0

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, ", wanted to skip: "

    const-string v2, ", but actually skipped: "

    const-string v5, "Unable to skip enough data, type: "

    invoke-static {v5, v0, p0, v1, v2}, LB/f;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return v3

    :cond_5
    return v1
.end method

.method public static h(LR1/n;[BI)I
    .locals 16

    move/from16 v0, p2

    invoke-interface/range {p0 .. p2}, LR1/n;->g([BI)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x3

    const-string v4, "DfltImageHeaderParser"

    if-eq v1, v0, :cond_1

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Unable to read exif segment data, length: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", actually read: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    move/from16 p0, v2

    goto/16 :goto_11

    :cond_1
    const/4 v1, 0x0

    const/4 v5, 0x1

    sget-object v6, LR1/o;->a:[B

    if-eqz p1, :cond_2

    array-length v7, v6

    if-le v0, v7, :cond_2

    move v7, v5

    goto :goto_0

    :cond_2
    move v7, v1

    :goto_0
    if-eqz v7, :cond_4

    move v8, v1

    :goto_1
    array-length v9, v6

    if-ge v8, v9, :cond_4

    aget-byte v9, p1, v8

    aget-byte v10, v6, v8

    if-eq v9, v10, :cond_3

    move v7, v1

    goto :goto_2

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-eqz v7, :cond_1b

    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    const/4 v7, 0x6

    sub-int/2addr v6, v7

    const/4 v8, 0x2

    if-lt v6, v8, :cond_5

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    goto :goto_3

    :cond_5
    move v6, v2

    :goto_3
    const/16 v7, 0x4949

    if-eq v6, v7, :cond_8

    const/16 v7, 0x4d4d

    if-eq v6, v7, :cond_7

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Unknown endianness = "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_4

    :cond_7
    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_4

    :cond_8
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_4
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    const/16 v7, 0xa

    sub-int/2addr v6, v7

    const/4 v9, 0x4

    if-lt v6, v9, :cond_9

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    goto :goto_5

    :cond_9
    move v6, v2

    :goto_5
    add-int/lit8 v7, v6, 0x6

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v10

    sub-int/2addr v10, v7

    if-lt v10, v8, :cond_a

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v7

    goto :goto_6

    :cond_a
    move v7, v2

    :goto_6
    if-ge v1, v7, :cond_0

    add-int/lit8 v10, v6, 0x8

    mul-int/lit8 v11, v1, 0xc

    add-int/2addr v11, v10

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v10

    sub-int/2addr v10, v11

    if-lt v10, v8, :cond_b

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v10

    goto :goto_7

    :cond_b
    move v10, v2

    :goto_7
    const/16 v12, 0x112

    if-eq v10, v12, :cond_d

    :cond_c
    :goto_8
    move/from16 p0, v2

    goto/16 :goto_10

    :cond_d
    add-int/lit8 v12, v11, 0x2

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v13

    sub-int/2addr v13, v12

    if-lt v13, v8, :cond_e

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v12

    goto :goto_9

    :cond_e
    move v12, v2

    :goto_9
    if-lt v12, v5, :cond_f

    const/16 v13, 0xc

    if-le v12, v13, :cond_10

    :cond_f
    move/from16 p0, v2

    goto/16 :goto_f

    :cond_10
    add-int/lit8 v13, v11, 0x4

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v14

    sub-int/2addr v14, v13

    if-lt v14, v9, :cond_11

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v13

    goto :goto_a

    :cond_11
    move v13, v2

    :goto_a
    if-gez v13, :cond_12

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_c

    const-string v10, "Negative tiff component count"

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_12
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    const-string v15, " tagType="

    if-eqz v14, :cond_13

    const-string v14, "Got tagIndex="

    move/from16 p0, v2

    const-string v2, " formatCode="

    invoke-static {v14, v1, v15, v10, v2}, LB/f;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " componentCount="

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_13
    move/from16 p0, v2

    :goto_b
    sget-object v2, LR1/o;->b:[I

    aget v2, v2, v12

    add-int/2addr v13, v2

    if-le v13, v9, :cond_14

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1a

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, "Got byte count > 4, not orientation, continuing, formatCode="

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    :cond_14
    add-int/lit8 v11, v11, 0x8

    if-ltz v11, :cond_19

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    if-le v11, v2, :cond_15

    goto :goto_e

    :cond_15
    if-ltz v13, :cond_18

    add-int/2addr v13, v11

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    if-le v13, v2, :cond_16

    goto :goto_d

    :cond_16
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    sub-int/2addr v1, v11

    if-lt v1, v8, :cond_17

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    goto :goto_c

    :cond_17
    move/from16 v2, p0

    :goto_c
    return v2

    :cond_18
    :goto_d
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1a

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v11, "Illegal number of bytes for TI tag data tagType="

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_19
    :goto_e
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1a

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v12, "Illegal tagValueOffset="

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :goto_f
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1a

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, "Got invalid format code = "

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    :goto_10
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, p0

    goto/16 :goto_6

    :cond_1b
    move/from16 p0, v2

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "Missing jpeg exif preamble"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    :goto_11
    return p0
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 2

    new-instance v0, LR1/l;

    const-string v1, "Argument must not be null"

    invoke-static {p1, v1}, Ld2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LR1/l;-><init>(Ljava/nio/ByteBuffer;I)V

    invoke-static {v0}, LR1/o;->f(LR1/n;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 1

    new-instance v0, LL2/o;

    invoke-direct {v0, p1}, LL2/o;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, LR1/o;->f(LR1/n;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/io/InputStream;LL1/g;)I
    .locals 1

    new-instance v0, LL2/o;

    invoke-direct {v0, p1}, LL2/o;-><init>(Ljava/lang/Object;)V

    const-string p1, "Argument must not be null"

    invoke-static {p2, p1}, Ld2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p2}, LR1/o;->e(LR1/n;LL1/g;)I

    move-result p1

    return p1
.end method

.method public final d(Ljava/nio/ByteBuffer;LL1/g;)I
    .locals 2

    new-instance v0, LR1/l;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LR1/l;-><init>(Ljava/nio/ByteBuffer;I)V

    const-string p1, "Argument must not be null"

    invoke-static {p2, p1}, Ld2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p2}, LR1/o;->e(LR1/n;LL1/g;)I

    move-result p1

    return p1
.end method
