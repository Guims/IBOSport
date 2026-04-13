.class public Lz1/B;
.super Lcom/bumptech/glide/c;


# static fields
.field public static m:Z = true

.field public static n:Z = true

.field public static o:Z = true

.field public static p:Z = true


# virtual methods
.method public p(Landroid/view/View;I)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/c;->p(Landroid/view/View;I)V

    return-void

    :cond_0
    sget-boolean v0, Lz1/B;->p:Z

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {p1, p2}, Lz1/A;->a(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p1, 0x0

    sput-boolean p1, Lz1/B;->p:Z

    :cond_1
    return-void
.end method

.method public s(Landroid/view/View;IIII)V
    .locals 1

    sget-boolean v0, Lz1/B;->o:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p1, p2, p3, p4, p5}, Lz1/z;->a(Landroid/view/View;IIII)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p1, 0x0

    sput-boolean p1, Lz1/B;->o:Z

    :cond_0
    return-void
.end method

.method public t(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1

    sget-boolean v0, Lz1/B;->m:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p1, p2}, Lz1/y;->b(Landroid/view/View;Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p1, 0x0

    sput-boolean p1, Lz1/B;->m:Z

    :cond_0
    return-void
.end method

.method public u(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1

    sget-boolean v0, Lz1/B;->n:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p1, p2}, Lz1/y;->c(Landroid/view/View;Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p1, 0x0

    sput-boolean p1, Lz1/B;->n:Z

    :cond_0
    return-void
.end method
