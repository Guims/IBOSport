.class public final LW3/d;
.super Ljava/lang/Object;

# interfaces
.implements LW3/f;
.implements LW3/g;


# instance fields
.field public final a:LW3/b;

.field public final b:Landroid/content/Context;

.field public final c:LX3/b;

.field public final d:Ljava/util/Set;

.field public final e:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;LX3/b;Ljava/util/concurrent/Executor;)V
    .locals 2

    new-instance v0, LW3/b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, LW3/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LW3/d;->a:LW3/b;

    iput-object p3, p0, LW3/d;->d:Ljava/util/Set;

    iput-object p5, p0, LW3/d;->e:Ljava/util/concurrent/Executor;

    iput-object p4, p0, LW3/d;->c:LX3/b;

    iput-object p1, p0, LW3/d;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()LL2/r;
    .locals 2

    iget-object v0, p0, LW3/d;->b:Landroid/content/Context;

    invoke-static {v0}, LF/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-static {v0}, LE5/l;->t(Ljava/lang/Object;)LL2/r;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, LW3/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LW3/c;-><init>(LW3/d;I)V

    iget-object v1, p0, LW3/d;->e:Ljava/util/concurrent/Executor;

    invoke-static {v1, v0}, LE5/l;->i(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)LL2/r;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, LW3/d;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    invoke-static {v1}, LE5/l;->t(Ljava/lang/Object;)LL2/r;

    return-void

    :cond_0
    iget-object v0, p0, LW3/d;->b:Landroid/content/Context;

    invoke-static {v0}, LF/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, LE5/l;->t(Ljava/lang/Object;)LL2/r;

    return-void

    :cond_1
    new-instance v0, LW3/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LW3/c;-><init>(LW3/d;I)V

    iget-object v1, p0, LW3/d;->e:Ljava/util/concurrent/Executor;

    invoke-static {v1, v0}, LE5/l;->i(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)LL2/r;

    return-void
.end method
