.class public final LK0/f;
.super Ljava/lang/Object;

# interfaces
.implements LK0/a;


# instance fields
.field public final a:Lp3/H;

.field public final b:I


# direct methods
.method public constructor <init>(ILp3/Y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LK0/f;->b:I

    iput-object p2, p0, LK0/f;->a:Lp3/H;

    return-void
.end method

.method public static c(Lk0/u;I)LK0/f;
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "initialCapacity"

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lp3/q;->c(ILjava/lang/String;)V

    new-array v1, v2, [Ljava/lang/Object;

    iget v3, v0, Lk0/u;->c:I

    const/4 v4, 0x0

    const/4 v5, -0x2

    move v6, v4

    :goto_0
    invoke-virtual {v0}, Lk0/u;->a()I

    move-result v7

    const/16 v8, 0x8

    if-le v7, v8, :cond_13

    invoke-virtual {v0}, Lk0/u;->i()I

    move-result v7

    invoke-virtual {v0}, Lk0/u;->i()I

    move-result v9

    iget v10, v0, Lk0/u;->b:I

    add-int/2addr v10, v9

    invoke-virtual {v0, v10}, Lk0/u;->F(I)V

    const v9, 0x5453494c

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-ne v7, v9, :cond_0

    invoke-virtual {v0}, Lk0/u;->i()I

    move-result v7

    invoke-static {v0, v7}, LK0/f;->c(Lk0/u;I)LK0/f;

    move-result-object v7

    goto/16 :goto_5

    :cond_0
    const/16 v9, 0xc

    const/4 v13, 0x0

    sparse-switch v7, :sswitch_data_0

    :goto_1
    move-object v7, v13

    goto/16 :goto_5

    :sswitch_0
    new-instance v7, LK0/h;

    invoke-virtual {v0}, Lk0/u;->a()I

    move-result v8

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v8, v9}, Lk0/u;->s(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, LK0/h;-><init>(Ljava/lang/String;)V

    goto/16 :goto_5

    :sswitch_1
    invoke-virtual {v0}, Lk0/u;->i()I

    move-result v14

    invoke-virtual {v0, v9}, Lk0/u;->H(I)V

    invoke-virtual {v0}, Lk0/u;->i()I

    invoke-virtual {v0}, Lk0/u;->i()I

    move-result v15

    invoke-virtual {v0}, Lk0/u;->i()I

    move-result v16

    invoke-virtual {v0, v2}, Lk0/u;->H(I)V

    invoke-virtual {v0}, Lk0/u;->i()I

    move-result v17

    invoke-virtual {v0}, Lk0/u;->i()I

    move-result v18

    invoke-virtual {v0, v8}, Lk0/u;->H(I)V

    new-instance v13, LK0/d;

    invoke-direct/range {v13 .. v18}, LK0/d;-><init>(IIIII)V

    goto :goto_1

    :sswitch_2
    invoke-virtual {v0}, Lk0/u;->i()I

    move-result v7

    invoke-virtual {v0, v8}, Lk0/u;->H(I)V

    invoke-virtual {v0}, Lk0/u;->i()I

    move-result v8

    invoke-virtual {v0}, Lk0/u;->i()I

    move-result v13

    invoke-virtual {v0, v2}, Lk0/u;->H(I)V

    invoke-virtual {v0}, Lk0/u;->i()I

    invoke-virtual {v0, v9}, Lk0/u;->H(I)V

    new-instance v9, LK0/c;

    invoke-direct {v9, v7, v8, v13}, LK0/c;-><init>(III)V

    move-object v7, v9

    goto/16 :goto_5

    :sswitch_3
    const-string v7, "StreamFormatChunk"

    if-ne v5, v11, :cond_2

    invoke-virtual {v0, v2}, Lk0/u;->H(I)V

    invoke-virtual {v0}, Lk0/u;->i()I

    move-result v8

    invoke-virtual {v0}, Lk0/u;->i()I

    move-result v9

    invoke-virtual {v0, v2}, Lk0/u;->H(I)V

    invoke-virtual {v0}, Lk0/u;->i()I

    move-result v14

    sparse-switch v14, :sswitch_data_1

    move-object v15, v13

    goto :goto_2

    :sswitch_4
    const-string v15, "video/mjpeg"

    goto :goto_2

    :sswitch_5
    const-string v15, "video/mp43"

    goto :goto_2

    :sswitch_6
    const-string v15, "video/mp42"

    goto :goto_2

    :sswitch_7
    const-string v15, "video/avc"

    goto :goto_2

    :sswitch_8
    const-string v15, "video/mp4v-es"

    :goto_2
    if-nez v15, :cond_1

    const-string v8, "Ignoring track with unsupported compression "

    invoke-static {v8, v14, v7}, Lcom/google/android/material/datepicker/e;->m(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    new-instance v7, Landroidx/media3/common/Format$Builder;

    invoke-direct {v7}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v7, v8}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v8

    invoke-virtual {v8, v15}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    new-instance v8, LK0/g;

    invoke-virtual {v7}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v7

    invoke-direct {v8, v7}, LK0/g;-><init>(Landroidx/media3/common/Format;)V

    move-object v7, v8

    goto/16 :goto_5

    :cond_2
    if-ne v5, v12, :cond_c

    invoke-virtual {v0}, Lk0/u;->n()I

    move-result v8

    const-string v9, "audio/raw"

    const-string v14, "audio/mp4a-latm"

    if-eq v8, v12, :cond_7

    const/16 v15, 0x55

    if-eq v8, v15, :cond_6

    const/16 v15, 0xff

    if-eq v8, v15, :cond_5

    const/16 v15, 0x2000

    if-eq v8, v15, :cond_4

    const/16 v15, 0x2001

    if-eq v8, v15, :cond_3

    move-object v15, v13

    goto :goto_3

    :cond_3
    const-string v15, "audio/vnd.dts"

    goto :goto_3

    :cond_4
    const-string v15, "audio/ac3"

    goto :goto_3

    :cond_5
    move-object v15, v14

    goto :goto_3

    :cond_6
    const-string v15, "audio/mpeg"

    goto :goto_3

    :cond_7
    move-object v15, v9

    :goto_3
    if-nez v15, :cond_8

    const-string v9, "Ignoring track with unsupported format tag "

    invoke-static {v9, v8, v7}, Lcom/google/android/material/datepicker/e;->m(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v0}, Lk0/u;->n()I

    move-result v7

    invoke-virtual {v0}, Lk0/u;->i()I

    move-result v8

    const/4 v13, 0x6

    invoke-virtual {v0, v13}, Lk0/u;->H(I)V

    invoke-virtual {v0}, Lk0/u;->n()I

    move-result v13

    invoke-static {v13}, Lk0/C;->z(I)I

    move-result v13

    invoke-virtual {v0}, Lk0/u;->a()I

    move-result v16

    if-lez v16, :cond_9

    invoke-virtual {v0}, Lk0/u;->n()I

    move-result v16

    move/from16 v2, v16

    goto :goto_4

    :cond_9
    move v2, v4

    :goto_4
    new-array v11, v2, [B

    invoke-virtual {v0, v11, v4, v2}, Lk0/u;->e([BII)V

    new-instance v4, Landroidx/media3/common/Format$Builder;

    invoke-direct {v4}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v4, v15}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    if-eqz v13, :cond_a

    invoke-virtual {v4, v13}, Landroidx/media3/common/Format$Builder;->setPcmEncoding(I)Landroidx/media3/common/Format$Builder;

    :cond_a
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    if-lez v2, :cond_b

    invoke-static {v11}, Lp3/H;->n(Ljava/lang/Object;)Lp3/Y;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    :cond_b
    new-instance v2, LK0/g;

    invoke-virtual {v4}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v4

    invoke-direct {v2, v4}, LK0/g;-><init>(Landroidx/media3/common/Format;)V

    move-object v7, v2

    goto :goto_5

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Ignoring strf box for unsupported track type: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lk0/C;->G(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :goto_5
    if-eqz v7, :cond_12

    invoke-interface {v7}, LK0/a;->a()I

    move-result v2

    const v4, 0x68727473

    if-ne v2, v4, :cond_10

    move-object v2, v7

    check-cast v2, LK0/d;

    iget v2, v2, LK0/d;->a:I

    const v4, 0x73646976

    if-eq v2, v4, :cond_f

    const v4, 0x73647561

    if-eq v2, v4, :cond_e

    const v4, 0x73747874

    if-eq v2, v4, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Found unsupported streamType fourCC: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "AviStreamHeaderChunk"

    invoke-static {v4, v2}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    :goto_6
    move v5, v2

    goto :goto_7

    :cond_d
    const/4 v2, 0x3

    goto :goto_6

    :cond_e
    const/4 v5, 0x1

    goto :goto_7

    :cond_f
    const/4 v5, 0x2

    :cond_10
    :goto_7
    array-length v2, v1

    add-int/lit8 v4, v6, 0x1

    invoke-static {v2, v4}, Lcom/google/android/gms/internal/play_billing/w;->e(II)I

    move-result v2

    array-length v8, v1

    if-gt v2, v8, :cond_11

    goto :goto_8

    :cond_11
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    :goto_8
    aput-object v7, v1, v6

    move v6, v4

    :cond_12
    invoke-virtual {v0, v10}, Lk0/u;->G(I)V

    invoke-virtual {v0, v3}, Lk0/u;->F(I)V

    const/4 v2, 0x4

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_13
    new-instance v0, LK0/f;

    invoke-static {v6, v1}, Lp3/H;->h(I[Ljava/lang/Object;)Lp3/Y;

    move-result-object v1

    move/from16 v2, p1

    invoke-direct {v0, v2, v1}, LK0/f;-><init>(ILp3/Y;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x66727473 -> :sswitch_3
        0x68697661 -> :sswitch_2
        0x68727473 -> :sswitch_1
        0x6e727473 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x30355844 -> :sswitch_8
        0x31435641 -> :sswitch_7
        0x31637661 -> :sswitch_7
        0x3234504d -> :sswitch_6
        0x3334504d -> :sswitch_5
        0x34363248 -> :sswitch_7
        0x34504d46 -> :sswitch_8
        0x44495633 -> :sswitch_8
        0x44495658 -> :sswitch_8
        0x47504a4d -> :sswitch_4
        0x58564944 -> :sswitch_8
        0x64697678 -> :sswitch_8
        0x67706a6d -> :sswitch_4
        0x78766964 -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, LK0/f;->b:I

    return v0
.end method

.method public final b(Ljava/lang/Class;)LK0/a;
    .locals 3

    iget-object v0, p0, LK0/f;->a:Lp3/H;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lp3/H;->l(I)Lp3/F;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Lp3/F;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lp3/F;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LK0/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
