.class public final LA/j;
.super Ljava/lang/Object;

# interfaces
.implements LE0/u;
.implements Lz4/m;
.implements Lz4/x;
.implements LE1/A;
.implements LL2/h;
.implements Lcom/bumptech/glide/load/data/d;
.implements LN3/a;
.implements LI1/m;
.implements LR1/q;


# instance fields
.field public final synthetic b:I

.field public q:Ljava/lang/Object;

.field public r:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    iput p1, p0, LA/j;->b:I

    sparse-switch p1, :sswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x200

    invoke-direct {p1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object p1, p0, LA/j;->q:Ljava/lang/Object;

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, LA/j;->r:Ljava/lang/Object;

    return-void

    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ld2/j;

    const-wide/16 v0, 0x3e8

    invoke-direct {p1, v0, v1}, Ld2/j;-><init>(J)V

    iput-object p1, p0, LA/j;->q:Ljava/lang/Object;

    new-instance p1, Lu2/j;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lu2/j;-><init>(I)V

    invoke-static {v0, p1}, Le2/d;->a(ILe2/a;)LJ/l;

    move-result-object p1

    iput-object p1, p0, LA/j;->r:Ljava/lang/Object;

    return-void

    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LA/j;->q:Ljava/lang/Object;

    new-instance p1, LM1/c;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, LM1/c;-><init>(I)V

    iput-object p1, p0, LA/j;->r:Ljava/lang/Object;

    return-void

    :sswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, LL1/d;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, LL1/d;-><init>(LL1/i;)V

    iput-object p1, p0, LA/j;->q:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LA/j;->r:Ljava/lang/Object;

    return-void

    :sswitch_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LA/j;->q:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LA/j;->r:Ljava/lang/Object;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_4
        0x14 -> :sswitch_3
        0x15 -> :sswitch_2
        0x16 -> :sswitch_1
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LA/j;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    filled-new-array {p1, p2}, [I

    move-result-object p1

    iput-object p1, p0, LA/j;->q:Ljava/lang/Object;

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, LA/j;->r:Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LA/j;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    filled-new-array {p1, p2, p3}, [I

    move-result-object p1

    iput-object p1, p0, LA/j;->q:Ljava/lang/Object;

    const/4 p1, 0x3

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, LA/j;->r:Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(LA3/b;)V
    .locals 1

    const/16 v0, 0x10

    iput v0, p0, LA/j;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA/j;->q:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, LA/j;->r:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LD4/x;ILib/player/models/MovieModel;)V
    .locals 0

    const/4 p2, 0x6

    iput p2, p0, LA/j;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA/j;->r:Ljava/lang/Object;

    iput-object p3, p0, LA/j;->q:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LA/j;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA/j;->q:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, LA/j;->r:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/a2;)V
    .locals 5

    const/16 v0, 0x8

    iput v0, p0, LA/j;->b:I

    new-instance v0, LB0/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {p1}, Lj2/q;->b(Landroid/content/Context;)V

    invoke-static {}, Lj2/q;->a()Lj2/q;

    move-result-object p1

    sget-object v1, Lh2/a;->e:Lh2/a;

    invoke-virtual {p1, v1}, Lj2/q;->c(Lj2/l;)Lj2/p;

    move-result-object p1

    const-string v1, "PLAY_BILLING_LIBRARY"

    const-string v2, "proto"

    new-instance v3, Lg2/b;

    invoke-direct {v3, v2}, Lg2/b;-><init>(Ljava/lang/String;)V

    new-instance v2, Lh3/e;

    const/4 v4, 0x3

    invoke-direct {v2, v4}, Lh3/e;-><init>(I)V

    invoke-virtual {p1, v1, v3, v2}, Lj2/p;->a(Ljava/lang/String;Lg2/b;Lg2/d;)LG/c;

    move-result-object p1

    iput-object p1, v0, LB0/i;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, 0x1

    iput-boolean p1, v0, LB0/i;->a:Z

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LA/j;->r:Ljava/lang/Object;

    iput-object p2, p0, LA/j;->q:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;LG0/I;)V
    .locals 1

    const/16 v0, 0xf

    iput v0, p0, LA/j;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, LA/j;->q:Ljava/lang/Object;

    iput-object p2, p0, LA/j;->r:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, LA/j;->b:I

    iput-object p1, p0, LA/j;->q:Ljava/lang/Object;

    iput-object p3, p0, LA/j;->r:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    iput p3, p0, LA/j;->b:I

    iput-object p1, p0, LA/j;->r:Ljava/lang/Object;

    iput-object p2, p0, LA/j;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, LA/j;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [I

    iput-object v1, p0, LA/j;->q:Ljava/lang/Object;

    new-array v1, v0, [F

    iput-object v1, p0, LA/j;->r:Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, LA/j;->q:Ljava/lang/Object;

    check-cast v2, [I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    iget-object v2, p0, LA/j;->r:Ljava/lang/Object;

    check-cast v2, [F

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>([LN3/a;)V
    .locals 1

    const/16 v0, 0x18

    iput v0, p0, LA/j;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA/j;->q:Ljava/lang/Object;

    new-instance p1, Lh3/e;

    const/16 v0, 0xb

    invoke-direct {p1, v0}, Lh3/e;-><init>(I)V

    iput-object p1, p0, LA/j;->r:Ljava/lang/Object;

    return-void
.end method

.method public static p(Landroid/graphics/ImageDecoder$Source;IILI1/j;)LR1/C;
    .locals 1

    new-instance v0, LQ1/b;

    invoke-direct {v0, p1, p2, p3}, LQ1/b;-><init>(IILI1/j;)V

    invoke-static {p0, v0}, LR1/c;->i(Landroid/graphics/ImageDecoder$Source;LQ1/b;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, LR1/c;->n(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, LR1/C;

    invoke-static {p0}, LR1/c;->h(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AnimatedImageDrawable;

    move-result-object p0

    const/4 p2, 0x2

    invoke-direct {p1, p2, p0}, LR1/C;-><init>(ILjava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Received unexpected drawable type for animated image, failing: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public A(Landroidx/media3/common/VideoSize;)V
    .locals 3

    iget-object v0, p0, LA/j;->q:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, LA/o;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2, p1}, LA/o;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public B(Lcom/google/android/gms/internal/play_billing/Q1;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/h2;->t()Lcom/google/android/gms/internal/play_billing/g2;

    move-result-object v0

    iget-object v1, p0, LA/j;->q:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/play_billing/a2;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/g2;->e(Lcom/google/android/gms/internal/play_billing/a2;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/f1;->d()V

    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/f1;->q:Lcom/google/android/gms/internal/play_billing/g1;

    check-cast v1, Lcom/google/android/gms/internal/play_billing/h2;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/h2;->n(Lcom/google/android/gms/internal/play_billing/h2;Lcom/google/android/gms/internal/play_billing/Q1;)V

    iget-object p1, p0, LA/j;->r:Ljava/lang/Object;

    check-cast p1, LB0/i;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/f1;->b()Lcom/google/android/gms/internal/play_billing/g1;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/h2;

    invoke-virtual {p1, v0}, LB0/i;->f(Lcom/google/android/gms/internal/play_billing/h2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "BillingLogger"

    const-string v1, "Unable to log."

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/o0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public C(Lcom/google/android/gms/internal/play_billing/S1;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/h2;->t()Lcom/google/android/gms/internal/play_billing/g2;

    move-result-object v0

    iget-object v1, p0, LA/j;->q:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/play_billing/a2;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/g2;->e(Lcom/google/android/gms/internal/play_billing/a2;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/f1;->d()V

    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/f1;->q:Lcom/google/android/gms/internal/play_billing/g1;

    check-cast v1, Lcom/google/android/gms/internal/play_billing/h2;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/h2;->o(Lcom/google/android/gms/internal/play_billing/h2;Lcom/google/android/gms/internal/play_billing/S1;)V

    iget-object p1, p0, LA/j;->r:Ljava/lang/Object;

    check-cast p1, LB0/i;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/f1;->b()Lcom/google/android/gms/internal/play_billing/g1;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/h2;

    invoke-virtual {p1, v0}, LB0/i;->f(Lcom/google/android/gms/internal/play_billing/h2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "BillingLogger"

    const-string v1, "Unable to log."

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/o0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public D(Lcom/google/android/gms/internal/play_billing/W1;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/h2;->t()Lcom/google/android/gms/internal/play_billing/g2;

    move-result-object v0

    iget-object v1, p0, LA/j;->q:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/play_billing/a2;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/g2;->e(Lcom/google/android/gms/internal/play_billing/a2;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/f1;->d()V

    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/f1;->q:Lcom/google/android/gms/internal/play_billing/g1;

    check-cast v1, Lcom/google/android/gms/internal/play_billing/h2;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/h2;->p(Lcom/google/android/gms/internal/play_billing/h2;Lcom/google/android/gms/internal/play_billing/W1;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/f1;->b()Lcom/google/android/gms/internal/play_billing/g1;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/h2;

    iget-object v0, p0, LA/j;->r:Ljava/lang/Object;

    check-cast v0, LB0/i;

    invoke-virtual {v0, p1}, LB0/i;->f(Lcom/google/android/gms/internal/play_billing/h2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "BillingLogger"

    const-string v1, "Unable to log."

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/o0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public E(Lcom/google/android/gms/internal/play_billing/k2;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, LA/j;->r:Ljava/lang/Object;

    check-cast v0, LB0/i;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/h2;->t()Lcom/google/android/gms/internal/play_billing/g2;

    move-result-object v1

    iget-object v2, p0, LA/j;->q:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/play_billing/a2;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/g2;->e(Lcom/google/android/gms/internal/play_billing/a2;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/f1;->d()V

    iget-object v2, v1, Lcom/google/android/gms/internal/play_billing/f1;->q:Lcom/google/android/gms/internal/play_billing/g1;

    check-cast v2, Lcom/google/android/gms/internal/play_billing/h2;

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/play_billing/h2;->r(Lcom/google/android/gms/internal/play_billing/h2;Lcom/google/android/gms/internal/play_billing/k2;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/f1;->b()Lcom/google/android/gms/internal/play_billing/g1;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/h2;

    invoke-virtual {v0, p1}, LB0/i;->f(Lcom/google/android/gms/internal/play_billing/h2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "BillingLogger"

    const-string v1, "Unable to log."

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/o0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public F()V
    .locals 6

    iget v0, p0, LA/j;->b:I

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LA/j;->r:Ljava/lang/Object;

    check-cast v0, Lib/player/pages/movie/MoviePlayerActivity;

    iget-object v4, p0, LA/j;->q:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    sget v5, Lib/player/pages/movie/MoviePlayerActivity;->K0:I

    invoke-virtual {v0, v2, v3, v4}, Lib/player/pages/movie/MoviePlayerActivity;->B(JLjava/lang/String;)V

    iget-object v2, v0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lib/player/pages/movie/MoviePlayerActivity;->A()V

    return-void

    :pswitch_0
    iget-object v0, p0, LA/j;->r:Ljava/lang/Object;

    check-cast v0, Lib/player/pages/movie/MovieMobilePlayerActivity;

    iget-object v4, p0, LA/j;->q:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    sget v5, Lib/player/pages/movie/MovieMobilePlayerActivity;->N0:I

    invoke-virtual {v0, v2, v3, v4}, Lib/player/pages/movie/MovieMobilePlayerActivity;->B(JLjava/lang/String;)V

    iget-object v2, v0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lib/player/pages/movie/MovieMobilePlayerActivity;->A()V

    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public G(Lcom/google/android/gms/internal/play_billing/l2;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/h2;->t()Lcom/google/android/gms/internal/play_billing/g2;

    move-result-object v0

    iget-object v1, p0, LA/j;->q:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/play_billing/a2;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/g2;->e(Lcom/google/android/gms/internal/play_billing/a2;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/f1;->d()V

    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/f1;->q:Lcom/google/android/gms/internal/play_billing/g1;

    check-cast v1, Lcom/google/android/gms/internal/play_billing/h2;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/h2;->s(Lcom/google/android/gms/internal/play_billing/h2;Lcom/google/android/gms/internal/play_billing/l2;)V

    iget-object p1, p0, LA/j;->r:Ljava/lang/Object;

    check-cast p1, LB0/i;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/f1;->b()Lcom/google/android/gms/internal/play_billing/g1;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/h2;

    invoke-virtual {p1, v0}, LB0/i;->f(Lcom/google/android/gms/internal/play_billing/h2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "BillingLogger"

    const-string v1, "Unable to log."

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/o0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(LL1/b;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, LA/j;->r:Ljava/lang/Object;

    check-cast v0, Ld2/e;

    iget-object v0, v0, Ld2/e;->q:Ljava/io/IOException;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p1, p2}, LL1/b;->b(Landroid/graphics/Bitmap;)V

    :cond_0
    throw v0

    :cond_1
    return-void
.end method

.method public b()V
    .locals 6

    iget v0, p0, LA/j;->b:I

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LA/j;->r:Ljava/lang/Object;

    check-cast v0, Lib/player/pages/movie/MoviePlayerActivity;

    iget-object v4, p0, LA/j;->q:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    sget v5, Lib/player/pages/movie/MoviePlayerActivity;->K0:I

    invoke-virtual {v0, v2, v3, v4}, Lib/player/pages/movie/MoviePlayerActivity;->B(JLjava/lang/String;)V

    iget-object v2, v0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lib/player/pages/movie/MoviePlayerActivity;->A()V

    return-void

    :pswitch_0
    iget-object v0, p0, LA/j;->r:Ljava/lang/Object;

    check-cast v0, Lib/player/pages/movie/MovieMobilePlayerActivity;

    iget-object v4, p0, LA/j;->q:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    sget v5, Lib/player/pages/movie/MovieMobilePlayerActivity;->N0:I

    invoke-virtual {v0, v2, v3, v4}, Lib/player/pages/movie/MovieMobilePlayerActivity;->B(JLjava/lang/String;)V

    iget-object v2, v0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lib/player/pages/movie/MovieMobilePlayerActivity;->A()V

    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public c()V
    .locals 5

    iget v0, p0, LA/j;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LA/j;->r:Ljava/lang/Object;

    check-cast v0, Lib/player/pages/movie/MoviePlayerActivity;

    iget-object v1, v0, Lib/player/pages/movie/MoviePlayerActivity;->w0:Lz4/n;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroidx/fragment/app/m;->P(ZZ)V

    iget-object v1, p0, LA/j;->q:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-wide v3, v0, Lib/player/pages/movie/MoviePlayerActivity;->p0:J

    invoke-virtual {v0, v3, v4, v1}, Lib/player/pages/movie/MoviePlayerActivity;->B(JLjava/lang/String;)V

    iget-object v1, v0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lib/player/pages/movie/MoviePlayerActivity;->A()V

    return-void

    :pswitch_0
    iget-object v0, p0, LA/j;->r:Ljava/lang/Object;

    check-cast v0, Lib/player/pages/movie/MovieMobilePlayerActivity;

    iget-object v1, v0, Lib/player/pages/movie/MovieMobilePlayerActivity;->y0:Lz4/n;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroidx/fragment/app/m;->P(ZZ)V

    iget-object v1, p0, LA/j;->q:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-wide v3, v0, Lib/player/pages/movie/MovieMobilePlayerActivity;->t0:J

    invoke-virtual {v0, v3, v4, v1}, Lib/player/pages/movie/MovieMobilePlayerActivity;->B(JLjava/lang/String;)V

    iget-object v1, v0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lib/player/pages/movie/MovieMobilePlayerActivity;->A()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public d(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, LA/j;->r:Ljava/lang/Object;

    check-cast v0, LK1/H;

    iget-object v1, p0, LA/j;->q:Ljava/lang/Object;

    check-cast v1, LO1/q;

    iget-object v0, v0, LK1/H;->u:LO1/q;

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LA/j;->r:Ljava/lang/Object;

    check-cast v0, LK1/H;

    iget-object v1, p0, LA/j;->q:Ljava/lang/Object;

    check-cast v1, LO1/q;

    iget-object v2, v0, LK1/H;->q:LK1/k;

    iget-object v0, v0, LK1/H;->v:LK1/f;

    iget-object v1, v1, LO1/q;->c:Lcom/bumptech/glide/load/data/e;

    invoke-interface {v1}, Lcom/bumptech/glide/load/data/e;->c()I

    move-result v3

    invoke-virtual {v2, v0, p1, v1, v3}, LK1/k;->c(LI1/f;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/e;I)V

    :cond_0
    return-void
.end method

.method public e(LI1/j;)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method

.method public f(Ljava/lang/Object;Ljava/io/File;LI1/j;)Z
    .locals 3

    check-cast p1, LK1/D;

    iget-object v0, p0, LA/j;->r:Ljava/lang/Object;

    check-cast v0, LR1/b;

    new-instance v1, LR1/e;

    invoke-interface {p1}, LK1/D;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v2, p0, LA/j;->q:Ljava/lang/Object;

    check-cast v2, LL1/b;

    invoke-direct {v1, v2, p1}, LR1/e;-><init>(LL1/b;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1, p2, p3}, LR1/b;->f(Ljava/lang/Object;Ljava/io/File;LI1/j;)Z

    move-result p1

    return p1
.end method

.method public g([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;
    .locals 6

    array-length v0, p1

    const/16 v1, 0x400

    if-gt v0, v1, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, LA/j;->q:Ljava/lang/Object;

    check-cast v0, [LN3/a;

    const/4 v2, 0x0

    move-object v3, p1

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v4, :cond_2

    aget-object v4, v0, v2

    array-length v5, v3

    if-gt v5, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v4, p1}, LN3/a;->g([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    array-length p1, v3

    if-le p1, v1, :cond_3

    iget-object p1, p0, LA/j;->r:Ljava/lang/Object;

    check-cast p1, Lh3/e;

    invoke-virtual {p1, v3}, Lh3/e;->g([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v3
.end method

.method public h(Landroid/net/Uri;Landroidx/media3/datasource/DataSourceInputStream;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LA/j;->q:Ljava/lang/Object;

    check-cast v0, LE0/u;

    invoke-interface {v0, p1, p2}, LE0/u;->h(Landroid/net/Uri;Landroidx/media3/datasource/DataSourceInputStream;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LA0/a;

    iget-object p2, p0, LA/j;->r:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, LA0/a;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LA0/a;

    :cond_1
    :goto_0
    return-object p1
.end method

.method public i()V
    .locals 3

    iget v0, p0, LA/j;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LA/j;->r:Ljava/lang/Object;

    check-cast v0, LF4/e;

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getPut_pin_code()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_0
    iget-object v0, p0, LA/j;->r:Ljava/lang/Object;

    check-cast v0, LD4/x;

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getPut_pin_code()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public j()V
    .locals 3

    iget v0, p0, LA/j;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LA/j;->r:Ljava/lang/Object;

    check-cast v0, LF4/e;

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getPin_incorrect()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_0
    iget-object v0, p0, LA/j;->r:Ljava/lang/Object;

    check-cast v0, LD4/x;

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getPin_incorrect()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public k(Ljava/lang/Object;)LL2/r;
    .locals 9

    iget v0, p0, LA/j;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, LA/j;->r:Ljava/lang/Object;

    check-cast p1, LM3/c;

    iget-object v0, p0, LA/j;->q:Ljava/lang/Object;

    check-cast v0, LF3/d;

    iget-object v0, v0, LF3/d;->c:LF3/c;

    iget-object v0, v0, LF3/c;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, LE3/p;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, LE3/p;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p1, LM3/c;->c:Ljava/lang/Object;

    check-cast v2, LL2/o;

    invoke-virtual {v2, v0}, LL2/o;->A(Lorg/json/JSONObject;)LM3/b;

    move-result-object v2

    iget-object v3, p1, LM3/c;->e:Ljava/lang/Object;

    check-cast v3, LM3/a;

    iget-wide v4, v2, LM3/b;->c:J

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "Failed to close settings writer."

    const-string v7, "FirebaseCrashlytics"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "Writing settings to cache file..."

    invoke-static {v7, v8, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :try_start_0
    const-string v8, "expires_at"

    invoke-virtual {v0, v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v4, Ljava/io/FileWriter;

    iget-object v3, v3, LM3/a;->b:Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v4, v6}, LE3/g;->b(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v1, v4

    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception v3

    move-object v4, v1

    :goto_1
    :try_start_2
    const-string v5, "Failed to cache settings"

    invoke-static {v7, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_2
    const-string v3, "Loaded settings: "

    invoke-static {v0, v3}, LM3/c;->d(Lorg/json/JSONObject;Ljava/lang/String;)V

    iget-object v0, p1, LM3/c;->b:Ljava/lang/Object;

    check-cast v0, LM3/e;

    iget-object v0, v0, LM3/e;->f:Ljava/lang/String;

    iget-object v3, p1, LM3/c;->a:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    const-string v4, "com.google.firebase.crashlytics"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "existing_instance_identifier"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p1, LM3/c;->h:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, p1, LM3/c;->i:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LL2/i;

    invoke-virtual {p1, v2}, LL2/i;->b(Ljava/lang/Object;)V

    goto :goto_4

    :goto_3
    invoke-static {v1, v6}, LE3/g;->b(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_4
    invoke-static {v1}, LE5/l;->t(Ljava/lang/Object;)LL2/r;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, LA/j;->r:Ljava/lang/Object;

    check-cast v0, LE3/n;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "FirebaseCrashlytics"

    const/4 v3, 0x0

    if-nez v1, :cond_4

    const/4 p1, 0x2

    invoke-static {v2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Deleting cached crash reports..."

    invoke-static {v2, p1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    iget-object p1, v0, LE3/n;->g:LK3/c;

    sget-object v1, LE3/n;->r:LE3/h;

    iget-object p1, p1, LK3/c;->r:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, LK3/c;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_5

    :cond_3
    iget-object p1, v0, LE3/n;->m:LD5/g;

    iget-object p1, p1, LD5/g;->b:Ljava/lang/Object;

    check-cast p1, LK3/a;

    iget-object p1, p1, LK3/a;->b:LK3/c;

    iget-object v1, p1, LK3/c;->t:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, LK3/c;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, LK3/a;->a(Ljava/util/List;)V

    iget-object v1, p1, LK3/c;->u:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, LK3/c;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, LK3/a;->a(Ljava/util/List;)V

    iget-object p1, p1, LK3/c;->v:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, LK3/c;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, LK3/a;->a(Ljava/util/List;)V

    iget-object p1, v0, LE3/n;->q:LL2/i;

    invoke-virtual {p1, v3}, LL2/i;->b(Ljava/lang/Object;)V

    invoke-static {v3}, LE5/l;->t(Ljava/lang/Object;)LL2/r;

    move-result-object p1

    goto :goto_6

    :cond_4
    const/4 v1, 0x3

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "Sending cached crash reports..."

    invoke-static {v2, v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v1, v0, LE3/n;->b:LE1/E;

    if-eqz p1, :cond_6

    iget-object p1, v1, LE1/E;->f:Ljava/lang/Object;

    check-cast p1, LL2/i;

    invoke-virtual {p1, v3}, LL2/i;->b(Ljava/lang/Object;)V

    iget-object p1, p0, LA/j;->q:Ljava/lang/Object;

    check-cast p1, LL2/r;

    iget-object v0, v0, LE3/n;->e:LF3/d;

    iget-object v0, v0, LF3/d;->a:LF3/c;

    new-instance v1, Le4/c;

    const/16 v2, 0xe

    invoke-direct {v1, v2, p0}, Le4/c;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, LL2/r;->h(Ljava/util/concurrent/Executor;LL2/h;)LL2/r;

    move-result-object p1

    :goto_6
    return-object p1

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "An invalid data collection token was used."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, LA/j;->q:Ljava/lang/Object;

    check-cast v0, LR1/y;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, LR1/y;->b:[B

    array-length v1, v1

    iput v1, v0, LR1/y;->r:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public m()V
    .locals 2

    iget v0, p0, LA/j;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LA/j;->r:Ljava/lang/Object;

    check-cast v0, LF4/e;

    iget-object v1, p0, LA/j;->q:Ljava/lang/Object;

    check-cast v1, Lib/player/models/MovieModel;

    invoke-virtual {v0, v1}, LF4/e;->U(Lib/player/models/MovieModel;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LA/j;->r:Ljava/lang/Object;

    check-cast v0, LD4/x;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, LA/j;->q:Ljava/lang/Object;

    check-cast v1, Lib/player/models/MovieModel;

    invoke-static {v0, v1}, LD4/x;->T(LD4/x;Lib/player/models/MovieModel;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public n(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, LA/j;->r:Ljava/lang/Object;

    check-cast v0, LK1/H;

    iget-object v1, p0, LA/j;->q:Ljava/lang/Object;

    check-cast v1, LO1/q;

    iget-object v0, v0, LK1/H;->u:LO1/q;

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, LA/j;->r:Ljava/lang/Object;

    check-cast v0, LK1/H;

    iget-object v1, p0, LA/j;->q:Ljava/lang/Object;

    check-cast v1, LO1/q;

    iget-object v2, v0, LK1/H;->b:LK1/i;

    iget-object v2, v2, LK1/i;->p:LK1/m;

    if-eqz p1, :cond_0

    iget-object v3, v1, LO1/q;->c:Lcom/bumptech/glide/load/data/e;

    invoke-interface {v3}, Lcom/bumptech/glide/load/data/e;->c()I

    move-result v3

    invoke-virtual {v2, v3}, LK1/m;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object p1, v0, LK1/H;->t:Ljava/lang/Object;

    iget-object p1, v0, LK1/H;->q:LK1/k;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, LK1/k;->l(I)V

    return-void

    :cond_0
    move-object v2, v1

    iget-object v1, v0, LK1/H;->q:LK1/k;

    move-object v3, v2

    iget-object v2, v3, LO1/q;->a:LI1/f;

    iget-object v4, v3, LO1/q;->c:Lcom/bumptech/glide/load/data/e;

    invoke-interface {v4}, Lcom/bumptech/glide/load/data/e;->c()I

    move-result v5

    iget-object v6, v0, LK1/H;->v:LK1/f;

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, LK1/k;->b(LI1/f;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;ILI1/f;)V

    :cond_1
    return-void
.end method

.method public o()V
    .locals 3

    iget-object v0, p0, LA/j;->q:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, LA/j;->r:Ljava/lang/Object;

    check-cast v1, LK3/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/io/File;

    iget-object v1, v1, LK3/c;->r:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "Error creating marker: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "FirebaseCrashlytics"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public q(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 3

    invoke-virtual {p1}, Landroidx/media3/exoplayer/DecoderCounters;->ensureUpdated()V

    iget-object v0, p0, LA/j;->q:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, LG0/H;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, LG0/H;-><init>(LA/j;Landroidx/media3/exoplayer/DecoderCounters;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public r(LT0/a;)[B
    .locals 4

    iget-object v0, p0, LA/j;->r:Ljava/lang/Object;

    check-cast v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, LA/j;->q:Ljava/lang/Object;

    check-cast v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    :try_start_0
    iget-object v2, p1, LT0/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v3, p1, LT0/a;->q:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-wide v2, p1, LT0/a;->r:J

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-wide v2, p1, LT0/a;->s:J

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object p1, p1, LT0/a;->t:[B

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public s(LL1/i;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LA/j;->r:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LL1/d;

    if-nez v1, :cond_0

    new-instance v1, LL1/d;

    invoke-direct {v1, p1}, LL1/d;-><init>(LL1/i;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, LL1/i;->a()V

    :goto_0
    iget-object p1, v1, LL1/d;->d:LL1/d;

    iget-object v0, v1, LL1/d;->c:LL1/d;

    iput-object v0, p1, LL1/d;->c:LL1/d;

    iget-object v0, v1, LL1/d;->c:LL1/d;

    iput-object p1, v0, LL1/d;->d:LL1/d;

    iget-object p1, p0, LA/j;->q:Ljava/lang/Object;

    check-cast p1, LL1/d;

    iput-object p1, v1, LL1/d;->d:LL1/d;

    iget-object p1, p1, LL1/d;->c:LL1/d;

    iput-object p1, v1, LL1/d;->c:LL1/d;

    iput-object v1, p1, LL1/d;->d:LL1/d;

    iget-object p1, v1, LL1/d;->d:LL1/d;

    iput-object v1, p1, LL1/d;->c:LL1/d;

    iget-object p1, v1, LL1/d;->b:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-lez p1, :cond_2

    iget-object v0, v1, LL1/d;->b:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public varargs t([Ljava/lang/Object;)LI0/q;
    .locals 4

    iget-object v0, p0, LA/j;->r:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LA/j;->r:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-object v1, v2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :try_start_1
    iget-object v1, p0, LA/j;->q:Ljava/lang/Object;

    check-cast v1, LA3/b;

    invoke-virtual {v1}, LA3/b;->k()Ljava/lang/reflect/Constructor;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating extension"

    invoke-direct {v1, v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    iget-object v1, p0, LA/j;->r:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    if-nez v1, :cond_1

    return-object v2

    :cond_1
    :try_start_3
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LI0/q;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-object p1

    :catch_2
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected error creating extractor"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_2
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, LA/j;->b:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GroupedLinkedMap( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LA/j;->q:Ljava/lang/Object;

    check-cast v1, LL1/d;

    iget-object v2, v1, LL1/d;->c:LL1/d;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const/16 v4, 0x7b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, v2, LL1/d;->a:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, v2, LL1/d;->b:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_1

    :cond_0
    move v4, v3

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "}, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, LL1/d;->c:LL1/d;

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bounds{lower="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LA/j;->q:Ljava/lang/Object;

    check-cast v1, LB/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " upper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LA/j;->r:Ljava/lang/Object;

    check-cast v1, LB/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public u(LI1/f;)Ljava/lang/String;
    .locals 8

    iget-object v0, p0, LA/j;->q:Ljava/lang/Object;

    check-cast v0, Ld2/j;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LA/j;->q:Ljava/lang/Object;

    check-cast v1, Ld2/j;

    invoke-virtual {v1, p1}, Ld2/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v1, :cond_1

    iget-object v0, p0, LA/j;->r:Ljava/lang/Object;

    check-cast v0, LJ/l;

    invoke-virtual {v0}, LJ/l;->p()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM1/g;

    :try_start_1
    iget-object v1, v0, LM1/g;->b:Ljava/security/MessageDigest;

    invoke-interface {p1, v1}, LI1/f;->a(Ljava/security/MessageDigest;)V

    iget-object v1, v0, LM1/g;->b:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    sget-object v2, Ld2/n;->b:[C

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x0

    :goto_0
    :try_start_2
    array-length v4, v1

    if-ge v3, v4, :cond_0

    aget-byte v4, v1, v3

    and-int/lit16 v5, v4, 0xff

    mul-int/lit8 v6, v3, 0x2

    sget-object v7, Ld2/n;->a:[C

    ushr-int/lit8 v5, v5, 0x4

    aget-char v5, v7, v5

    aput-char v5, v2, v6

    add-int/lit8 v6, v6, 0x1

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v7, v4

    aput-char v4, v2, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, p0, LA/j;->r:Ljava/lang/Object;

    check-cast v2, LJ/l;

    invoke-virtual {v2, v0}, LJ/l;->f(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    iget-object v1, p0, LA/j;->r:Ljava/lang/Object;

    check-cast v1, LJ/l;

    invoke-virtual {v1, v0}, LJ/l;->f(Ljava/lang/Object;)Z

    throw p1

    :cond_1
    :goto_1
    iget-object v0, p0, LA/j;->q:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ld2/j;

    monitor-enter v2

    :try_start_5
    iget-object v0, p0, LA/j;->q:Ljava/lang/Object;

    check-cast v0, Ld2/j;

    invoke-virtual {v0, p1, v1}, Ld2/j;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    return-object v1

    :catchall_2
    move-exception p1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    :catchall_3
    move-exception p1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p1
.end method

.method public v(LG/f;)V
    .locals 4

    iget-object v0, p0, LA/j;->r:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    iget-object v1, p0, LA/j;->q:Ljava/lang/Object;

    check-cast v1, Le4/c;

    iget v2, p1, LG/f;->b:I

    if-nez v2, :cond_0

    iget-object p1, p1, LG/f;->a:Landroid/graphics/Typeface;

    new-instance v2, LE1/k;

    const/4 v3, 0x5

    invoke-direct {v2, v1, v3, p1}, LE1/k;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    new-instance p1, LG/a;

    const/4 v3, 0x0

    invoke-direct {p1, v2, v3, v1}, LG/a;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public w(LL1/i;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, LA/j;->r:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LL1/d;

    if-nez v1, :cond_0

    new-instance v1, LL1/d;

    invoke-direct {v1, p1}, LL1/d;-><init>(LL1/i;)V

    iput-object v1, v1, LL1/d;->d:LL1/d;

    iget-object v2, p0, LA/j;->q:Ljava/lang/Object;

    check-cast v2, LL1/d;

    iget-object v3, v2, LL1/d;->d:LL1/d;

    iput-object v3, v1, LL1/d;->d:LL1/d;

    iput-object v2, v1, LL1/d;->c:LL1/d;

    iput-object v1, v2, LL1/d;->d:LL1/d;

    iget-object v2, v1, LL1/d;->d:LL1/d;

    iput-object v1, v2, LL1/d;->c:LL1/d;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, LL1/i;->a()V

    :goto_0
    iget-object p1, v1, LL1/d;->b:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v1, LL1/d;->b:Ljava/util/ArrayList;

    :cond_1
    iget-object p1, v1, LL1/d;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 5

    const-string v0, "Removed the wrong lock, expected to remove: "

    const-string v1, "Cannot release a lock that is not held, safeKey: "

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, LA/j;->q:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Argument must not be null"

    invoke-static {v2, v3}, Ld2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, LM1/b;

    iget v3, v2, LM1/b;->b:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_3

    sub-int/2addr v3, v4

    iput v3, v2, LM1/b;->b:I

    if-nez v3, :cond_2

    iget-object v1, p0, LA/j;->q:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM1/b;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p1, p0, LA/j;->r:Ljava/lang/Object;

    check-cast p1, LM1/c;

    iget-object v0, p1, LM1/c;->a:Ljava/util/ArrayDeque;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p1, LM1/c;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    iget-object p1, p1, LM1/c;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", but actually removed: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", safeKey: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p1, v2, LM1/b;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", interestedThreads: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v2, LM1/b;->b:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public y()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, LA/j;->q:Ljava/lang/Object;

    check-cast v0, LL1/d;

    iget-object v1, v0, LL1/d;->d:LL1/d;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, v1, LL1/d;->a:Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez v2, :cond_3

    iget-object v2, v1, LL1/d;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-lez v2, :cond_1

    iget-object v4, v1, LL1/d;->b:Ljava/util/ArrayList;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    :cond_1
    if-eqz v4, :cond_2

    return-object v4

    :cond_2
    iget-object v2, v1, LL1/d;->d:LL1/d;

    iget-object v4, v1, LL1/d;->c:LL1/d;

    iput-object v4, v2, LL1/d;->c:LL1/d;

    iget-object v4, v1, LL1/d;->c:LL1/d;

    iput-object v2, v4, LL1/d;->d:LL1/d;

    iget-object v2, p0, LA/j;->r:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, LL1/i;

    invoke-interface {v3}, LL1/i;->a()V

    iget-object v1, v1, LL1/d;->d:LL1/d;

    goto :goto_0

    :cond_3
    return-object v4
.end method

.method public z(I)LI0/L;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LA/j;->q:Ljava/lang/Object;

    check-cast v1, [I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget v1, v1, v0

    if-ne p1, v1, :cond_0

    iget-object p1, p0, LA/j;->r:Ljava/lang/Object;

    check-cast p1, [Landroidx/media3/exoplayer/source/e0;

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unmatched track of type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseMediaChunkOutput"

    invoke-static {v0, p1}, Lk0/c;->o(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, LI0/o;

    invoke-direct {p1}, LI0/o;-><init>()V

    return-object p1
.end method
