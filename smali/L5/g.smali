.class public final LL5/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LL5/g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/chromium/net/CronetProvider;)I
    .locals 1

    invoke-virtual {p1}, Lorg/chromium/net/CronetProvider;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "App-Packaged-Cronet-Provider"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string v0, "Google-Play-Services-Cronet-Provider"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x3

    return p1
.end method

.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    iget v0, p0, LL5/g;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    sget-object v0, LJ/U;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, LJ/H;->m(Landroid/view/View;)F

    move-result p1

    invoke-static {p2}, LJ/H;->m(Landroid/view/View;)F

    move-result p2

    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    move v1, v2

    :cond_1
    :goto_0
    return v1

    :pswitch_0
    check-cast p1, Lv1/l;

    check-cast p2, Lv1/l;

    iget-object v0, p1, Lv1/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    iget-object v5, p2, Lv1/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v5, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v1

    :goto_2
    if-eq v4, v5, :cond_4

    if-nez v0, :cond_5

    goto :goto_3

    :cond_4
    iget-boolean v0, p1, Lv1/l;->a:Z

    iget-boolean v4, p2, Lv1/l;->a:Z

    if-eq v0, v4, :cond_7

    if-eqz v0, :cond_6

    :cond_5
    move v1, v3

    goto :goto_4

    :cond_6
    :goto_3
    move v1, v2

    goto :goto_4

    :cond_7
    iget v0, p2, Lv1/l;->b:I

    iget v2, p1, Lv1/l;->b:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_8

    move v1, v0

    goto :goto_4

    :cond_8
    iget p1, p1, Lv1/l;->c:I

    iget p2, p2, Lv1/l;->c:I

    sub-int/2addr p1, p2

    if-eqz p1, :cond_9

    move v1, p1

    :cond_9
    :goto_4
    return v1

    :pswitch_1
    check-cast p1, Lp/f;

    check-cast p2, Lp/f;

    iget p1, p1, Lp/f;->q:I

    iget p2, p2, Lp/f;->q:I

    sub-int/2addr p1, p2

    return p1

    :pswitch_2
    check-cast p1, Lorg/chromium/net/CronetProvider;

    check-cast p2, Lorg/chromium/net/CronetProvider;

    invoke-virtual {p0, p1}, LL5/g;->a(Lorg/chromium/net/CronetProvider;)I

    move-result v0

    invoke-virtual {p0, p2}, LL5/g;->a(Lorg/chromium/net/CronetProvider;)I

    move-result v2

    sub-int/2addr v0, v2

    if-eqz v0, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {p1}, Lorg/chromium/net/CronetProvider;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/chromium/net/CronetProvider;->getVersion()Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_d

    if-nez p2, :cond_b

    goto :goto_6

    :cond_b
    sget v0, Lk0/C;->a:I

    const-string v0, "\\."

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p2

    array-length v0, p1

    array-length v2, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_d

    aget-object v3, p1, v2

    aget-object v4, p2, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    :try_start_0
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    aget-object p2, p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    sub-int v1, p1, p2

    goto :goto_6

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :catch_0
    :cond_d
    :goto_6
    neg-int v0, v1

    :goto_7
    return v0

    :pswitch_3
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1

    :pswitch_4
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    sub-int/2addr p1, p2

    return p1

    :pswitch_5
    check-cast p1, LL5/f;

    iget-object p1, p1, LL5/f;->a:LK5/x;

    check-cast p2, LL5/f;

    iget-object p2, p2, LL5/f;->a:LK5/x;

    if-ne p1, p2, :cond_e

    goto :goto_8

    :cond_e
    if-nez p1, :cond_f

    move v1, v3

    goto :goto_8

    :cond_f
    if-nez p2, :cond_10

    move v1, v2

    goto :goto_8

    :cond_10
    invoke-virtual {p1, p2}, LK5/x;->compareTo(Ljava/lang/Object;)I

    move-result v1

    :goto_8
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
