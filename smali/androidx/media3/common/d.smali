.class public final synthetic Landroidx/media3/common/d;
.super Ljava/lang/Object;

# interfaces
.implements Lk0/n;
.implements Lo3/d;
.implements Lk0/h;
.implements LW0/g;
.implements LI0/t;
.implements Ly3/d;
.implements Lg2/d;
.implements Lio/realm/x;
.implements Lg2/f;
.implements Ll3/x;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/media3/common/d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lg4/l;)V
    .locals 0

    const/16 p1, 0x10

    iput p1, p0, Landroidx/media3/common/d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIIII)Z
    .locals 3

    const/16 v0, 0x43

    const/4 v1, 0x2

    const/16 v2, 0x4d

    if-ne p2, v0, :cond_0

    const/16 v0, 0x4f

    if-ne p3, v0, :cond_0

    if-ne p4, v2, :cond_0

    if-eq p5, v2, :cond_1

    if-eq p1, v1, :cond_1

    :cond_0
    if-ne p2, v2, :cond_2

    const/16 p2, 0x4c

    if-ne p3, p2, :cond_2

    if-ne p4, p2, :cond_2

    const/16 p2, 0x54

    if-eq p5, p2, :cond_1

    if-ne p1, v1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/media3/exoplayer/source/c0;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/c0;->b:Lu0/p;

    invoke-interface {p1}, Lu0/p;->release()V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 34

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/media3/common/d;->b:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Lg4/H;

    sget-object v2, Lg4/I;->b:LL2/o;

    invoke-virtual {v2, v1}, LL2/o;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SessionEvents.SESSION_EVENT_ENCODER.encode(value)"

    invoke-static {v1, v2}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "EventGDTLogger"

    const-string v3, "Session Event Type: SESSION_START"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lk5/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "getBytes(...)"

    invoke-static {v1, v2}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Lf1/a;

    iget-wide v1, v1, Lf1/a;->b:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    const-wide/16 v1, 0x0

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    :pswitch_2
    move-object/from16 v1, p1

    check-cast v1, Lj0/b;

    iget-object v8, v1, Lj0/b;->d:Landroid/graphics/Bitmap;

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iget-object v10, v1, Lj0/b;->a:Ljava/lang/CharSequence;

    if-eqz v10, :cond_5

    sget-object v11, Lj0/b;->r:Ljava/lang/String;

    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    instance-of v11, v10, Landroid/text/Spanned;

    if-eqz v11, :cond_5

    check-cast v10, Landroid/text/Spanned;

    sget-object v11, Lj0/d;->a:Ljava/lang/String;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v12

    const-class v13, Lj0/g;

    invoke-interface {v10, v7, v12, v13}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lj0/g;

    array-length v13, v12

    move v14, v7

    :goto_0
    if-ge v14, v13, :cond_1

    aget-object v15, v12, v14

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v3, Lj0/g;->c:Ljava/lang/String;

    iget-object v4, v15, Lj0/g;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lj0/g;->d:Ljava/lang/String;

    iget v4, v15, Lj0/g;->b:I

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v10, v15, v6, v2}, Lj0/d;->a(Landroid/text/Spanned;Ljava/lang/Object;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Lj0/h;

    invoke-interface {v10, v7, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lj0/h;

    array-length v3, v2

    move v4, v7

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v6, v2, v4

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    sget-object v13, Lj0/h;->d:Ljava/lang/String;

    iget v14, v6, Lj0/h;->a:I

    invoke-virtual {v12, v13, v14}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v13, Lj0/h;->e:Ljava/lang/String;

    iget v14, v6, Lj0/h;->b:I

    invoke-virtual {v12, v13, v14}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v13, Lj0/h;->f:Ljava/lang/String;

    iget v14, v6, Lj0/h;->c:I

    invoke-virtual {v12, v13, v14}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v10, v6, v5, v12}, Lj0/d;->a(Landroid/text/Spanned;Ljava/lang/Object;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Lj0/e;

    invoke-interface {v10, v7, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lj0/e;

    array-length v3, v2

    move v4, v7

    :goto_2
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    const/4 v6, 0x3

    const/4 v12, 0x0

    invoke-static {v10, v5, v6, v12}, Lj0/d;->a(Landroid/text/Spanned;Ljava/lang/Object;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Lj0/i;

    invoke-interface {v10, v7, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lj0/i;

    array-length v3, v2

    move v4, v7

    :goto_3
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    sget-object v12, Lj0/i;->b:Ljava/lang/String;

    iget-object v13, v5, Lj0/i;->a:Ljava/lang/String;

    invoke-virtual {v6, v12, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x4

    invoke-static {v10, v5, v12, v6}, Lj0/d;->a(Landroid/text/Spanned;Ljava/lang/Object;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lj0/b;->s:Ljava/lang/String;

    invoke-virtual {v9, v2, v11}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_5
    sget-object v2, Lj0/b;->t:Ljava/lang/String;

    iget-object v3, v1, Lj0/b;->b:Landroid/text/Layout$Alignment;

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    sget-object v2, Lj0/b;->u:Ljava/lang/String;

    iget-object v3, v1, Lj0/b;->c:Landroid/text/Layout$Alignment;

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    sget-object v2, Lj0/b;->x:Ljava/lang/String;

    iget v3, v1, Lj0/b;->e:F

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    sget-object v2, Lj0/b;->y:Ljava/lang/String;

    iget v3, v1, Lj0/b;->f:I

    invoke-virtual {v9, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Lj0/b;->z:Ljava/lang/String;

    iget v3, v1, Lj0/b;->g:I

    invoke-virtual {v9, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Lj0/b;->A:Ljava/lang/String;

    iget v3, v1, Lj0/b;->h:F

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    sget-object v2, Lj0/b;->B:Ljava/lang/String;

    iget v3, v1, Lj0/b;->i:I

    invoke-virtual {v9, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Lj0/b;->C:Ljava/lang/String;

    iget v3, v1, Lj0/b;->n:I

    invoke-virtual {v9, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Lj0/b;->D:Ljava/lang/String;

    iget v3, v1, Lj0/b;->o:F

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    sget-object v2, Lj0/b;->E:Ljava/lang/String;

    iget v3, v1, Lj0/b;->j:F

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    sget-object v2, Lj0/b;->F:Ljava/lang/String;

    iget v3, v1, Lj0/b;->k:F

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    sget-object v2, Lj0/b;->H:Ljava/lang/String;

    iget-boolean v3, v1, Lj0/b;->l:Z

    invoke-virtual {v9, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v2, Lj0/b;->G:Ljava/lang/String;

    iget v3, v1, Lj0/b;->m:I

    invoke-virtual {v9, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Lj0/b;->I:Ljava/lang/String;

    iget v3, v1, Lj0/b;->p:I

    invoke-virtual {v9, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Lj0/b;->J:Ljava/lang/String;

    iget v1, v1, Lj0/b;->q:F

    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    if-eqz v8, :cond_6

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v8, v2, v7, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v2

    invoke-static {v2}, Lk0/c;->j(Z)V

    sget-object v2, Lj0/b;->w:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_6
    return-object v9

    :pswitch_3
    const/4 v12, 0x0

    move-object/from16 v1, p1

    check-cast v1, Landroid/os/Bundle;

    sget-object v2, Lj0/b;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_c

    sget-object v3, Lj0/b;->s:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-static {v2}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v8, v7

    :goto_4
    if-ge v8, v4, :cond_b

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Landroid/os/Bundle;

    sget-object v10, Lj0/d;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v10

    sget-object v11, Lj0/d;->b:Ljava/lang/String;

    invoke-virtual {v9, v11}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v11

    sget-object v13, Lj0/d;->c:Ljava/lang/String;

    invoke-virtual {v9, v13}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v13

    sget-object v14, Lj0/d;->d:Ljava/lang/String;

    const/4 v15, -0x1

    invoke-virtual {v9, v14, v15}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    sget-object v15, Lj0/d;->e:Ljava/lang/String;

    invoke-virtual {v9, v15}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    if-eq v14, v6, :cond_a

    if-eq v14, v5, :cond_9

    const/4 v15, 0x3

    if-eq v14, v15, :cond_8

    const/4 v5, 0x4

    if-eq v14, v5, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, Lj0/i;

    sget-object v5, Lj0/i;->b:Ljava/lang/String;

    invoke-virtual {v9, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v14, v5}, Lj0/i;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v14, v10, v11, v13}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_5

    :cond_8
    new-instance v5, Lj0/e;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-interface {v2, v5, v10, v11, v13}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_5

    :cond_9
    const/4 v15, 0x3

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lj0/h;

    sget-object v14, Lj0/h;->d:Ljava/lang/String;

    invoke-virtual {v9, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v14

    sget-object v6, Lj0/h;->e:Ljava/lang/String;

    invoke-virtual {v9, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    sget-object v12, Lj0/h;->f:Ljava/lang/String;

    invoke-virtual {v9, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v5, v14, v6, v9}, Lj0/h;-><init>(III)V

    invoke-interface {v2, v5, v10, v11, v13}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_5

    :cond_a
    const/4 v15, 0x3

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lj0/g;

    sget-object v6, Lj0/g;->c:Ljava/lang/String;

    invoke-virtual {v9, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Lj0/g;->d:Ljava/lang/String;

    invoke-virtual {v9, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v5, v6, v9}, Lj0/g;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v5, v10, v11, v13}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :goto_5
    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v12, 0x0

    goto/16 :goto_4

    :cond_b
    move-object/from16 v17, v2

    goto :goto_6

    :cond_c
    const/16 v17, 0x0

    :goto_6
    sget-object v2, Lj0/b;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Landroid/text/Layout$Alignment;

    if-eqz v2, :cond_d

    move-object/from16 v18, v2

    goto :goto_7

    :cond_d
    const/16 v18, 0x0

    :goto_7
    sget-object v2, Lj0/b;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Landroid/text/Layout$Alignment;

    if-eqz v2, :cond_e

    move-object/from16 v19, v2

    goto :goto_8

    :cond_e
    const/16 v19, 0x0

    :goto_8
    sget-object v2, Lj0/b;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_f

    move-object/from16 v20, v2

    goto :goto_9

    :cond_f
    sget-object v2, Lj0/b;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_10

    array-length v3, v2

    invoke-static {v2, v7, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v20, v3

    goto :goto_9

    :cond_10
    const/16 v20, 0x0

    :goto_9
    sget-object v2, Lj0/b;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    const v4, -0x800001

    const/high16 v5, -0x80000000

    if-eqz v3, :cond_11

    sget-object v3, Lj0/b;->y:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v2

    move/from16 v22, v3

    goto :goto_a

    :cond_11
    move/from16 v21, v4

    move/from16 v22, v5

    :goto_a
    sget-object v2, Lj0/b;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    goto :goto_b

    :cond_12
    move/from16 v23, v5

    :goto_b
    sget-object v2, Lj0/b;->A:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    move/from16 v24, v2

    goto :goto_c

    :cond_13
    move/from16 v24, v4

    :goto_c
    sget-object v2, Lj0/b;->B:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    goto :goto_d

    :cond_14
    move/from16 v25, v5

    :goto_d
    sget-object v2, Lj0/b;->D:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    sget-object v3, Lj0/b;->C:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move/from16 v27, v2

    move/from16 v26, v3

    goto :goto_e

    :cond_15
    move/from16 v27, v4

    move/from16 v26, v5

    :goto_e
    sget-object v2, Lj0/b;->E:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    move/from16 v28, v2

    goto :goto_f

    :cond_16
    move/from16 v28, v4

    :goto_f
    sget-object v2, Lj0/b;->F:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    :cond_17
    move/from16 v29, v4

    sget-object v2, Lj0/b;->G:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v6, 0x1

    :goto_10
    move/from16 v31, v2

    goto :goto_11

    :cond_18
    const/high16 v2, -0x1000000

    move v6, v7

    goto :goto_10

    :goto_11
    sget-object v2, Lj0/b;->H:Ljava/lang/String;

    invoke-virtual {v1, v2, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_19

    move/from16 v30, v7

    goto :goto_12

    :cond_19
    move/from16 v30, v6

    :goto_12
    sget-object v2, Lj0/b;->I:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    :cond_1a
    move/from16 v32, v5

    sget-object v2, Lj0/b;->J:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    :goto_13
    move/from16 v33, v1

    goto :goto_14

    :cond_1b
    const/4 v1, 0x0

    goto :goto_13

    :goto_14
    new-instance v16, Lj0/b;

    invoke-direct/range {v16 .. v33}, Lj0/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    return-object v16

    :pswitch_4
    move-object/from16 v1, p1

    check-cast v1, Lc1/q;

    return-object v1

    :pswitch_5
    move-object/from16 v1, p1

    check-cast v1, Landroidx/media3/common/TrackGroup;

    iget v1, v1, Landroidx/media3/common/TrackGroup;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :pswitch_6
    move-object/from16 v1, p1

    check-cast v1, Landroidx/media3/exoplayer/source/C;

    invoke-interface {v1}, Landroidx/media3/exoplayer/source/C;->o()Landroidx/media3/exoplayer/source/t0;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/exoplayer/source/t0;->b:Lp3/Y;

    new-instance v2, Landroidx/media3/common/d;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Landroidx/media3/common/d;-><init>(I)V

    invoke-static {v1, v2}, Lp3/q;->v(Ljava/util/List;Lo3/d;)Ljava/util/AbstractList;

    move-result-object v1

    invoke-static {v1}, Lp3/H;->j(Ljava/util/Collection;)Lp3/H;

    move-result-object v1

    return-object v1

    :pswitch_7
    move-object/from16 v1, p1

    check-cast v1, LI0/q;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_8
    move-object/from16 v1, p1

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v1}, Landroidx/media3/common/Timeline$Period;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Timeline$Period;

    move-result-object v1

    return-object v1

    :pswitch_9
    move-object/from16 v1, p1

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v1}, Landroidx/media3/common/Timeline$Window;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public c(LD5/g;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Landroidx/media3/common/d;->b:I

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->a(LD5/g;)Lg4/r;

    move-result-object p1

    return-object p1

    :sswitch_0
    invoke-static {p1}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->b(LD5/g;)Lg4/o;

    move-result-object p1

    return-object p1

    :sswitch_1
    new-instance v0, Le4/b;

    const-class v1, Le4/a;

    invoke-static {v1}, Ly3/q;->a(Ljava/lang/Class;)Ly3/q;

    move-result-object v1

    invoke-virtual {p1, v1}, LD5/g;->f(Ly3/q;)Ljava/util/Set;

    move-result-object p1

    sget-object v1, Le4/c;->r:Le4/c;

    if-nez v1, :cond_1

    const-class v2, Le4/c;

    monitor-enter v2

    :try_start_0
    sget-object v1, Le4/c;->r:Le4/c;

    if-nez v1, :cond_0

    new-instance v1, Le4/c;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Le4/c;-><init>(I)V

    sput-object v1, Le4/c;->r:Le4/c;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v2

    goto :goto_2

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_2
    invoke-direct {v0, p1, v1}, Le4/b;-><init>(Ljava/util/Set;Le4/c;)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public e()[LI0/q;
    .locals 10

    iget v0, p0, Landroidx/media3/common/d;->b:I

    sget-object v1, Lf1/k;->g:LW3/e;

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    new-instance v4, Lo1/I;

    new-instance v8, Lk0/z;

    const-wide/16 v0, 0x0

    invoke-direct {v8, v0, v1}, Lk0/z;-><init>(J)V

    new-instance v9, Lo1/g;

    sget-object v0, Lp3/H;->q:Lp3/F;

    sget-object v0, Lp3/Y;->t:Lp3/Y;

    invoke-direct {v9, v3, v0}, Lo1/g;-><init>(ILjava/util/List;)V

    const/4 v5, 0x1

    const/4 v6, 0x1

    sget-object v7, Lf1/k;->g:LW3/e;

    invoke-direct/range {v4 .. v9}, Lo1/I;-><init>(IILf1/k;Lk0/z;Lo1/g;)V

    new-array v0, v2, [LI0/q;

    aput-object v4, v0, v3

    return-object v0

    :sswitch_0
    new-instance v0, Lo1/E;

    invoke-direct {v0}, Lo1/E;-><init>()V

    new-array v1, v2, [LI0/q;

    aput-object v0, v1, v3

    return-object v1

    :sswitch_1
    new-instance v0, Lo1/e;

    invoke-direct {v0, v3}, Lo1/e;-><init>(I)V

    new-array v1, v2, [LI0/q;

    aput-object v0, v1, v3

    return-object v1

    :sswitch_2
    new-instance v0, Lo1/c;

    invoke-direct {v0}, Lo1/c;-><init>()V

    new-array v1, v2, [LI0/q;

    aput-object v0, v1, v3

    return-object v1

    :sswitch_3
    new-instance v0, Lo1/a;

    invoke-direct {v0}, Lo1/a;-><init>()V

    new-array v1, v2, [LI0/q;

    aput-object v0, v1, v3

    return-object v1

    :sswitch_4
    new-instance v0, Ld1/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-array v1, v2, [LI0/q;

    aput-object v0, v1, v3

    return-object v1

    :sswitch_5
    new-instance v0, Lc1/m;

    const/16 v4, 0x10

    invoke-direct {v0, v1, v4}, Lc1/m;-><init>(Lf1/k;I)V

    new-array v1, v2, [LI0/q;

    aput-object v0, v1, v3

    return-object v1

    :sswitch_6
    new-instance v0, Lc1/i;

    const/16 v4, 0x20

    invoke-direct {v0, v1, v4}, Lc1/i;-><init>(Lf1/k;I)V

    new-array v1, v2, [LI0/q;

    aput-object v0, v1, v3

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_6
        0xa -> :sswitch_5
        0xb -> :sswitch_4
        0x19 -> :sswitch_3
        0x1a -> :sswitch_2
        0x1b -> :sswitch_1
        0x1c -> :sswitch_0
    .end sparse-switch
.end method

.method public g(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-interface {p1}, Landroidx/media3/common/Player$Listener;->onRenderedFirstFrame()V

    return-void
.end method

.method public j(Lio/realm/y;)V
    .locals 1

    iget v0, p0, Landroidx/media3/common/d;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Lio/realm/d;->f()V

    return-void

    :pswitch_0
    invoke-virtual {p1}, Lio/realm/d;->f()V

    return-void

    :pswitch_1
    invoke-virtual {p1}, Lio/realm/d;->f()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
