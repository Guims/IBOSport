.class public final Lk/s;
.super Ljava/lang/Object;


# static fields
.field public static final b:Landroid/graphics/PorterDuff$Mode;

.field public static c:Lk/s;


# instance fields
.field public a:Lk/H0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lk/s;->b:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public static declared-synchronized a()Lk/s;
    .locals 2

    const-class v0, Lk/s;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lk/s;->c:Lk/s;

    if-nez v1, :cond_0

    invoke-static {}, Lk/s;->d()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lk/s;->c:Lk/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    const-class v0, Lk/s;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lk/H0;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized d()V
    .locals 7

    const-class v0, Lk/s;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lk/s;->c:Lk/s;

    if-nez v1, :cond_0

    new-instance v1, Lk/s;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lk/s;->c:Lk/s;

    invoke-static {}, Lk/H0;->b()Lk/H0;

    move-result-object v2

    iput-object v2, v1, Lk/s;->a:Lk/H0;

    sget-object v1, Lk/s;->c:Lk/s;

    iget-object v1, v1, Lk/s;->a:Lk/H0;

    new-instance v2, LD5/g;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const v3, 0x7f080087

    const v4, 0x7f08003d

    const v5, 0x7f080089

    filled-new-array {v5, v3, v4}, [I

    move-result-object v3

    iput-object v3, v2, LD5/g;->a:Ljava/lang/Object;

    const/4 v3, 0x7

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    iput-object v4, v2, LD5/g;->b:Ljava/lang/Object;

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    iput-object v3, v2, LD5/g;->c:Ljava/lang/Object;

    const v3, 0x7f08004c

    const v4, 0x7f08006d

    const v5, 0x7f08006e

    filled-new-array {v5, v3, v4}, [I

    move-result-object v3

    iput-object v3, v2, LD5/g;->d:Ljava/lang/Object;

    const v3, 0x7f080080

    const v4, 0x7f08008a

    filled-new-array {v3, v4}, [I

    move-result-object v3

    iput-object v3, v2, LD5/g;->e:Ljava/lang/Object;

    const v3, 0x7f080041

    const v4, 0x7f080047

    const v5, 0x7f080040

    const v6, 0x7f080046

    filled-new-array {v5, v6, v3, v4}, [I

    move-result-object v3

    iput-object v3, v2, LD5/g;->f:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object v2, v1, Lk/H0;->e:LD5/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    :array_0
    .array-data 4
        0x7f080055
        0x7f080078
        0x7f08005c
        0x7f080057
        0x7f080058
        0x7f08005b
        0x7f08005a
    .end array-data

    :array_1
    .array-data 4
        0x7f080086
        0x7f080088
        0x7f08004e
        0x7f080082
        0x7f080083
        0x7f080084
        0x7f080085
    .end array-data
.end method

.method public static e(Landroid/graphics/drawable/Drawable;Lk/O0;[I)V
    .locals 4

    sget-object v0, Lk/H0;->f:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-ne v1, p0, :cond_7

    instance-of v1, p0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v1, v2, [I

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    iget-boolean v0, p1, Lk/O0;->b:Z

    if-nez v0, :cond_2

    iget-boolean v1, p1, Lk/O0;->a:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    return-void

    :cond_2
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lk/O0;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/ColorStateList;

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    iget-boolean v3, p1, Lk/O0;->a:Z

    if-eqz v3, :cond_4

    iget-object p1, p1, Lk/O0;->d:Ljava/io/Serializable;

    check-cast p1, Landroid/graphics/PorterDuff$Mode;

    goto :goto_2

    :cond_4
    sget-object p1, Lk/H0;->f:Landroid/graphics/PorterDuff$Mode;

    :goto_2
    if-eqz v0, :cond_6

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0, p2, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p2

    invoke-static {p2, p1}, Lk/H0;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    :cond_7
    const-string p0, "ResourceManagerInternal"

    const-string p1, "Mutated drawable is not the same instance as the input."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final declared-synchronized b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lk/s;->a:Lk/H0;

    invoke-virtual {v0, p1, p2}, Lk/H0;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
