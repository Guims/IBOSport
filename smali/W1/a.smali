.class public final LW1/a;
.super Ljava/lang/Object;

# interfaces
.implements LW1/b;
.implements Lr1/K;


# instance fields
.field public final b:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LW1/a;->b:Landroid/content/res/Resources;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LW1/a;->b:Landroid/content/res/Resources;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(LK1/D;LI1/j;)LK1/D;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p2, LR1/e;

    iget-object v0, p0, LW1/a;->b:Landroid/content/res/Resources;

    invoke-direct {p2, v0, p1}, LR1/e;-><init>(Landroid/content/res/Resources;LK1/D;)V

    return-object p2
.end method

.method public b(Landroidx/media3/common/Format;)Ljava/lang/String;
    .locals 6

    iget-object v0, p1, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_2

    const-string v1, "und"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sget v1, Lk0/C;->a:I

    const/16 v3, 0x18

    if-lt v1, v3, :cond_1

    sget-object v1, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v1}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    :goto_1
    move-object v0, v2

    goto :goto_2

    :cond_3
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_2
    invoke-virtual {p0, p1}, LW1/a;->c(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LW1/a;->e([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p1, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    iget-object v2, p1, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    :goto_3
    move-object v0, v2

    :cond_5
    return-object v0
.end method

.method public c(Landroidx/media3/common/Format;)Ljava/lang/String;
    .locals 3

    iget v0, p1, Landroidx/media3/common/Format;->roleFlags:I

    and-int/lit8 v0, v0, 0x2

    iget-object v1, p0, LW1/a;->b:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    const v0, 0x7f130073

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget v2, p1, Landroidx/media3/common/Format;->roleFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    const v2, 0x7f130076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LW1/a;->e([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget v2, p1, Landroidx/media3/common/Format;->roleFlags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    const v2, 0x7f130075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LW1/a;->e([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget p1, p1, Landroidx/media3/common/Format;->roleFlags:I

    and-int/lit16 p1, p1, 0x440

    if-eqz p1, :cond_3

    const p1, 0x7f130074

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LW1/a;->e([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v0
.end method

.method public d(Landroidx/media3/common/Format;)Ljava/lang/String;
    .locals 9

    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    move v0, v2

    goto :goto_2

    :cond_2
    iget-object v0, p1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    :cond_3
    :goto_1
    move v0, v1

    goto :goto_2

    :cond_4
    iget v0, p1, Landroidx/media3/common/Format;->width:I

    if-ne v0, v3, :cond_1

    iget v0, p1, Landroidx/media3/common/Format;->height:I

    if-eq v0, v3, :cond_5

    goto :goto_0

    :cond_5
    iget v0, p1, Landroidx/media3/common/Format;->channelCount:I

    if-ne v0, v3, :cond_3

    iget v0, p1, Landroidx/media3/common/Format;->sampleRate:I

    if-eq v0, v3, :cond_6

    goto :goto_1

    :cond_6
    move v0, v3

    :goto_2
    const v4, 0x49742400    # 1000000.0f

    const v5, 0x7f130070

    const-string v6, ""

    iget-object v7, p0, LW1/a;->b:Landroid/content/res/Resources;

    if-ne v0, v2, :cond_a

    invoke-virtual {p0, p1}, LW1/a;->c(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Landroidx/media3/common/Format;->width:I

    iget v2, p1, Landroidx/media3/common/Format;->height:I

    if-eq v1, v3, :cond_8

    if-ne v2, v3, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f130072

    invoke-virtual {v7, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_8
    :goto_3
    move-object v1, v6

    :goto_4
    iget v2, p1, Landroidx/media3/common/Format;->bitrate:I

    if-ne v2, v3, :cond_9

    goto :goto_5

    :cond_9
    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_5
    filled-new-array {v0, v1, v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LW1/a;->e([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_a
    if-ne v0, v1, :cond_12

    invoke-virtual {p0, p1}, LW1/a;->b(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v0

    iget v8, p1, Landroidx/media3/common/Format;->channelCount:I

    if-eq v8, v3, :cond_10

    if-ge v8, v1, :cond_b

    goto :goto_6

    :cond_b
    if-eq v8, v1, :cond_f

    if-eq v8, v2, :cond_e

    const/4 v1, 0x6

    if-eq v8, v1, :cond_d

    const/4 v1, 0x7

    if-eq v8, v1, :cond_d

    const/16 v1, 0x8

    if-eq v8, v1, :cond_c

    const v1, 0x7f13007b

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_c
    const v1, 0x7f13007d

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_d
    const v1, 0x7f13007c

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_e
    const v1, 0x7f13007a

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_f
    const v1, 0x7f130071

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_10
    :goto_6
    move-object v1, v6

    :goto_7
    iget v2, p1, Landroidx/media3/common/Format;->bitrate:I

    if-ne v2, v3, :cond_11

    goto :goto_8

    :cond_11
    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_8
    filled-new-array {v0, v1, v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LW1/a;->e([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_12
    invoke-virtual {p0, p1}, LW1/a;->b(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_13

    return-object v0

    :cond_13
    iget-object p1, p1, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_a

    :cond_14
    const v0, 0x7f13007f

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v7, v0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_15
    :goto_a
    const p1, 0x7f13007e

    invoke-virtual {v7, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs e([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    array-length v0, p1

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    goto :goto_1

    :cond_0
    const v4, 0x7f13006f

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, LW1/a;->b:Landroid/content/res/Resources;

    invoke-virtual {v3, v4, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method
