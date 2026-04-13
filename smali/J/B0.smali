.class public final LJ/B0;
.super Ljava/lang/Object;


# static fields
.field public static final b:LJ/B0;


# instance fields
.field public final a:LJ/y0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    sget-object v0, LJ/x0;->q:LJ/B0;

    sput-object v0, LJ/B0;->b:LJ/B0;

    return-void

    :cond_0
    sget-object v0, LJ/y0;->b:LJ/B0;

    sput-object v0, LJ/B0;->b:LJ/B0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LJ/y0;

    invoke-direct {v0, p0}, LJ/y0;-><init>(LJ/B0;)V

    iput-object v0, p0, LJ/B0;->a:LJ/y0;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, LJ/x0;

    invoke-direct {v0, p0, p1}, LJ/x0;-><init>(LJ/B0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, LJ/B0;->a:LJ/y0;

    return-void

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    new-instance v0, LJ/w0;

    invoke-direct {v0, p0, p1}, LJ/w0;-><init>(LJ/B0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, LJ/B0;->a:LJ/y0;

    return-void

    :cond_1
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    new-instance v0, LJ/v0;

    invoke-direct {v0, p0, p1}, LJ/v0;-><init>(LJ/B0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, LJ/B0;->a:LJ/y0;

    return-void

    :cond_2
    new-instance v0, LJ/u0;

    invoke-direct {v0, p0, p1}, LJ/u0;-><init>(LJ/B0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, LJ/B0;->a:LJ/y0;

    return-void
.end method

.method public static e(LB/c;IIII)LB/c;
    .locals 5

    iget v0, p0, LB/c;->a:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, LB/c;->b:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, LB/c;->c:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, LB/c;->d:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-ne v3, p3, :cond_0

    if-ne v1, p4, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0, v2, v3, v1}, LB/c;->b(IIII)LB/c;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/view/View;Landroid/view/WindowInsets;)LJ/B0;
    .locals 2

    new-instance v0, LJ/B0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p1}, LJ/B0;-><init>(Landroid/view/WindowInsets;)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, LJ/U;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, LJ/I;->a(Landroid/view/View;)LJ/B0;

    move-result-object p1

    iget-object v1, v0, LJ/B0;->a:LJ/y0;

    invoke-virtual {v1, p1}, LJ/y0;->p(LJ/B0;)V

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v1, p0}, LJ/y0;->d(Landroid/view/View;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, LJ/B0;->a:LJ/y0;

    invoke-virtual {v0}, LJ/y0;->j()LB/c;

    move-result-object v0

    iget v0, v0, LB/c;->d:I

    return v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, LJ/B0;->a:LJ/y0;

    invoke-virtual {v0}, LJ/y0;->j()LB/c;

    move-result-object v0

    iget v0, v0, LB/c;->a:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, LJ/B0;->a:LJ/y0;

    invoke-virtual {v0}, LJ/y0;->j()LB/c;

    move-result-object v0

    iget v0, v0, LB/c;->c:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, LJ/B0;->a:LJ/y0;

    invoke-virtual {v0}, LJ/y0;->j()LB/c;

    move-result-object v0

    iget v0, v0, LB/c;->b:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, LJ/B0;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, LJ/B0;

    iget-object v0, p0, LJ/B0;->a:LJ/y0;

    iget-object p1, p1, LJ/B0;->a:LJ/y0;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()Landroid/view/WindowInsets;
    .locals 2

    iget-object v0, p0, LJ/B0;->a:LJ/y0;

    instance-of v1, v0, LJ/t0;

    if-eqz v1, :cond_0

    check-cast v0, LJ/t0;

    iget-object v0, v0, LJ/t0;->c:Landroid/view/WindowInsets;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, LJ/B0;->a:LJ/y0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, LJ/y0;->hashCode()I

    move-result v0

    return v0
.end method
