.class public final Lz2/c;
.super Ljava/lang/Object;


# static fields
.field public static final i:Lp5/p;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Lp5/p;

.field public final d:Lx2/i;

.field public final e:Lw2/a;

.field public final f:I

.field public final g:Lv0/n;

.field public final h:Lw2/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lt1/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lz2/b;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lp5/p;

    invoke-direct {v2, v1, v0}, Lp5/p;-><init>(Lz2/b;Lt1/f;)V

    sput-object v2, Lz2/c;->i:Lp5/p;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lp5/p;Lv2/b;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lx2/o;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Lx2/o;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    invoke-static {p3, v0}, Lx2/o;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "The provided context did not have an application context."

    invoke-static {v0, v1}, Lx2/o;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lz2/c;->a:Landroid/content/Context;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    invoke-static {p1}, LJ/z0;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lz2/c;->b:Ljava/lang/String;

    iput-object p2, p0, Lz2/c;->c:Lp5/p;

    sget-object v1, Lx2/i;->a:Lx2/i;

    iput-object v1, p0, Lz2/c;->d:Lx2/i;

    new-instance v1, Lw2/a;

    invoke-direct {v1, p2, p1}, Lw2/a;-><init>(Lp5/p;Ljava/lang/String;)V

    iput-object v1, p0, Lz2/c;->e:Lw2/a;

    new-instance p1, Lw2/l;

    invoke-static {v0}, Lw2/d;->d(Landroid/content/Context;)Lw2/d;

    move-result-object p1

    iput-object p1, p0, Lz2/c;->h:Lw2/d;

    iget-object p2, p1, Lw2/d;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p2

    iput p2, p0, Lz2/c;->f:I

    iget-object p2, p3, Lv2/b;->a:Lv0/n;

    iput-object p2, p0, Lz2/c;->g:Lv0/n;

    iget-object p1, p1, Lw2/d;->B:LF2/e;

    const/4 p2, 0x7

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public final a(Lx2/h;)LL2/r;
    .locals 4

    new-instance v0, Lv0/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, LF2/c;->a:Lu2/c;

    filled-new-array {v1}, [Lu2/c;

    move-result-object v1

    new-instance v2, Lv0/f;

    invoke-direct {v2, p1}, Lv0/f;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lv0/f;->b:Ljava/lang/Object;

    new-instance p1, Lcom/bumptech/glide/manager/r;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/bumptech/glide/manager/r;-><init>(Lv0/f;[Lu2/c;Z)V

    new-instance v0, LL2/i;

    invoke-direct {v0}, LL2/i;-><init>()V

    iget-object v1, p0, Lz2/c;->h:Lw2/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lw2/r;

    iget-object v3, p0, Lz2/c;->g:Lv0/n;

    invoke-direct {v2, p1, v0, v3}, Lw2/r;-><init>(Lcom/bumptech/glide/manager/r;LL2/i;Lv0/n;)V

    iget-object p1, v1, Lw2/d;->x:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v3, Lw2/p;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-direct {v3, v2, p1, p0}, Lw2/p;-><init>(Lw2/r;ILz2/c;)V

    iget-object p1, v1, Lw2/d;->B:LF2/e;

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p1, v0, LL2/i;->a:LL2/r;

    return-object p1
.end method
