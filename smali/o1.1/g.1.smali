.class public final Lo1/g;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo1/g;->a:I

    iput-object p2, p0, Lo1/g;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(ILk0/t;)Lo1/L;
    .locals 4

    iget-object v0, p2, Lk0/t;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    if-eq p1, v1, :cond_e

    const/4 v2, 0x3

    if-eq p1, v2, :cond_d

    const/4 v2, 0x4

    if-eq p1, v2, :cond_d

    const/16 v3, 0x15

    if-eq p1, v3, :cond_c

    const/16 v3, 0x1b

    if-eq p1, v3, :cond_a

    const/16 v2, 0x24

    if-eq p1, v2, :cond_9

    const/16 v2, 0x2d

    if-eq p1, v2, :cond_8

    const/16 v2, 0x59

    if-eq p1, v2, :cond_7

    const/16 v2, 0xac

    if-eq p1, v2, :cond_6

    const/16 v2, 0x101

    if-eq p1, v2, :cond_5

    const/16 v2, 0x8a

    if-eq p1, v2, :cond_4

    const/16 v2, 0x8b

    if-eq p1, v2, :cond_3

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_0
    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lo1/g;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance p1, Lo1/G;

    new-instance p2, Lo1/A;

    const-string v0, "application/x-scte35"

    invoke-direct {p2, v0}, Lo1/A;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lo1/G;-><init>(Lo1/F;)V

    return-object p1

    :pswitch_1
    const/16 p1, 0x40

    invoke-virtual {p0, p1}, Lo1/g;->c(I)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :pswitch_2
    new-instance p1, Lo1/B;

    new-instance v1, Lo1/b;

    invoke-virtual {p2}, Lk0/t;->d()I

    move-result p2

    invoke-direct {v1, v0, p2}, Lo1/b;-><init>(Ljava/lang/String;I)V

    invoke-direct {p1, v1}, Lo1/B;-><init>(Lo1/j;)V

    return-object p1

    :pswitch_3
    invoke-virtual {p0, v1}, Lo1/g;->c(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_0

    :cond_1
    new-instance p1, Lo1/B;

    new-instance v1, Lo1/v;

    invoke-virtual {p2}, Lk0/t;->d()I

    move-result p2

    invoke-direct {v1, v0, p2}, Lo1/v;-><init>(Ljava/lang/String;I)V

    invoke-direct {p1, v1}, Lo1/B;-><init>(Lo1/j;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lo1/B;

    new-instance v0, Lo1/o;

    new-instance v1, Lo1/M;

    invoke-virtual {p0, p2}, Lo1/g;->b(Lk0/t;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v1, p2}, Lo1/M;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1}, Lo1/o;-><init>(Lo1/M;)V

    invoke-direct {p1, v0}, Lo1/B;-><init>(Lo1/j;)V

    return-object p1

    :pswitch_5
    invoke-virtual {p0, v1}, Lo1/g;->c(I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_0

    :cond_2
    new-instance p1, Lo1/B;

    new-instance v1, Lo1/f;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lk0/t;->d()I

    move-result p2

    invoke-direct {v1, v0, v2, p2}, Lo1/f;-><init>(Ljava/lang/String;ZI)V

    invoke-direct {p1, v1}, Lo1/B;-><init>(Lo1/j;)V

    return-object p1

    :cond_3
    new-instance p1, Lo1/B;

    new-instance v1, Lo1/h;

    invoke-virtual {p2}, Lk0/t;->d()I

    move-result p2

    const/16 v2, 0x1520

    invoke-direct {v1, v0, p2, v2}, Lo1/h;-><init>(Ljava/lang/String;II)V

    invoke-direct {p1, v1}, Lo1/B;-><init>(Lo1/j;)V

    return-object p1

    :cond_4
    :pswitch_6
    new-instance p1, Lo1/B;

    new-instance v1, Lo1/h;

    invoke-virtual {p2}, Lk0/t;->d()I

    move-result p2

    const/16 v2, 0x1000

    invoke-direct {v1, v0, p2, v2}, Lo1/h;-><init>(Ljava/lang/String;II)V

    invoke-direct {p1, v1}, Lo1/B;-><init>(Lo1/j;)V

    return-object p1

    :cond_5
    new-instance p1, Lo1/G;

    new-instance p2, Lo1/A;

    const-string v0, "application/vnd.dvb.ait"

    invoke-direct {p2, v0}, Lo1/A;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lo1/G;-><init>(Lo1/F;)V

    return-object p1

    :cond_6
    new-instance p1, Lo1/B;

    new-instance v1, Lo1/d;

    invoke-virtual {p2}, Lk0/t;->d()I

    move-result p2

    invoke-direct {v1, v0, p2}, Lo1/d;-><init>(Ljava/lang/String;I)V

    invoke-direct {p1, v1}, Lo1/B;-><init>(Lo1/j;)V

    return-object p1

    :cond_7
    new-instance p1, Lo1/B;

    new-instance v0, Lo1/i;

    iget-object p2, p2, Lk0/t;->c:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    invoke-direct {v0, p2}, Lo1/i;-><init>(Ljava/util/List;)V

    invoke-direct {p1, v0}, Lo1/B;-><init>(Lo1/j;)V

    return-object p1

    :cond_8
    new-instance p1, Lo1/B;

    new-instance p2, Lo1/x;

    invoke-direct {p2}, Lo1/x;-><init>()V

    invoke-direct {p1, p2}, Lo1/B;-><init>(Lo1/j;)V

    return-object p1

    :cond_9
    new-instance p1, Lo1/B;

    new-instance v0, Lo1/t;

    new-instance v1, Lo1/H;

    invoke-virtual {p0, p2}, Lo1/g;->b(Lk0/t;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v1, p2}, Lo1/H;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1}, Lo1/t;-><init>(Lo1/H;)V

    invoke-direct {p1, v0}, Lo1/B;-><init>(Lo1/j;)V

    return-object p1

    :cond_a
    invoke-virtual {p0, v2}, Lo1/g;->c(I)Z

    move-result p1

    if-eqz p1, :cond_b

    :goto_0
    const/4 p1, 0x0

    return-object p1

    :cond_b
    new-instance p1, Lo1/B;

    new-instance v0, Lo1/r;

    new-instance v1, Lo1/H;

    invoke-virtual {p0, p2}, Lo1/g;->b(Lk0/t;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v1, p2}, Lo1/H;-><init>(Ljava/util/List;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lo1/g;->c(I)Z

    move-result p2

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lo1/g;->c(I)Z

    move-result v2

    invoke-direct {v0, v1, p2, v2}, Lo1/r;-><init>(Lo1/H;ZZ)V

    invoke-direct {p1, v0}, Lo1/B;-><init>(Lo1/j;)V

    return-object p1

    :cond_c
    new-instance p1, Lo1/B;

    new-instance p2, Lo1/u;

    invoke-direct {p2}, Lo1/u;-><init>()V

    invoke-direct {p1, p2}, Lo1/B;-><init>(Lo1/j;)V

    return-object p1

    :cond_d
    new-instance p1, Lo1/B;

    new-instance v1, Lo1/w;

    invoke-virtual {p2}, Lk0/t;->d()I

    move-result p2

    invoke-direct {v1, v0, p2}, Lo1/w;-><init>(Ljava/lang/String;I)V

    invoke-direct {p1, v1}, Lo1/B;-><init>(Lo1/j;)V

    return-object p1

    :cond_e
    :pswitch_7
    new-instance p1, Lo1/B;

    new-instance v0, Lo1/l;

    new-instance v1, Lo1/M;

    invoke-virtual {p0, p2}, Lo1/g;->b(Lk0/t;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v1, p2}, Lo1/M;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1}, Lo1/l;-><init>(Lo1/M;)V

    invoke-direct {p1, v0}, Lo1/B;-><init>(Lo1/j;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x80
        :pswitch_7
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x86
        :pswitch_0
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method

.method public final b(Lk0/t;)Ljava/util/List;
    .locals 11

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lo1/g;->c(I)Z

    move-result v0

    iget-object v1, p0, Lo1/g;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lk0/u;

    iget-object p1, p1, Lk0/t;->d:Ljava/lang/Object;

    check-cast p1, [B

    invoke-direct {v0, p1}, Lk0/u;-><init>([B)V

    :goto_0
    invoke-virtual {v0}, Lk0/u;->a()I

    move-result p1

    if-lez p1, :cond_8

    invoke-virtual {v0}, Lk0/u;->u()I

    move-result p1

    invoke-virtual {v0}, Lk0/u;->u()I

    move-result v2

    iget v3, v0, Lk0/u;->b:I

    add-int/2addr v3, v2

    const/16 v2, 0x86

    if-ne p1, v2, :cond_7

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lk0/u;->u()I

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    const/4 v2, 0x0

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_6

    const/4 v5, 0x3

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v5, v6}, Lk0/u;->s(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lk0/u;->u()I

    move-result v6

    and-int/lit16 v7, v6, 0x80

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    move v7, v8

    goto :goto_2

    :cond_1
    move v7, v2

    :goto_2
    if-eqz v7, :cond_2

    and-int/lit8 v6, v6, 0x3f

    const-string v9, "application/cea-708"

    goto :goto_3

    :cond_2
    const-string v9, "application/cea-608"

    move v6, v8

    :goto_3
    invoke-virtual {v0}, Lk0/u;->u()I

    move-result v10

    int-to-byte v10, v10

    invoke-virtual {v0, v8}, Lk0/u;->H(I)V

    if-eqz v7, :cond_5

    and-int/lit8 v7, v10, 0x40

    if-eqz v7, :cond_3

    move v7, v8

    goto :goto_4

    :cond_3
    move v7, v2

    :goto_4
    sget-object v10, Lk0/e;->a:[B

    if-eqz v7, :cond_4

    new-array v7, v8, [B

    aput-byte v8, v7, v2

    goto :goto_5

    :cond_4
    new-array v7, v8, [B

    aput-byte v2, v7, v2

    :goto_5
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_6

    :cond_5
    const/4 v7, 0x0

    :goto_6
    new-instance v8, Landroidx/media3/common/Format$Builder;

    invoke-direct {v8}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v8, v9}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setAccessibilityChannel(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    move-object v1, p1

    :cond_7
    invoke-virtual {v0, v3}, Lk0/u;->G(I)V

    goto/16 :goto_0

    :cond_8
    return-object v1
.end method

.method public final c(I)Z
    .locals 1

    iget v0, p0, Lo1/g;->a:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
