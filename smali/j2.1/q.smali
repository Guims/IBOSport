.class public final Lj2/q;
.super Ljava/lang/Object;


# static fields
.field public static volatile e:Lj2/k;


# instance fields
.field public final a:Ls2/a;

.field public final b:Ls2/a;

.field public final c:Lo2/b;

.field public final d:LM3/c;


# direct methods
.method public constructor <init>(Ls2/a;Ls2/a;Lo2/b;LM3/c;LK1/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj2/q;->a:Ls2/a;

    iput-object p2, p0, Lj2/q;->b:Ls2/a;

    iput-object p3, p0, Lj2/q;->c:Lo2/b;

    iput-object p4, p0, Lj2/q;->d:LM3/c;

    iget-object p1, p5, LK1/c;->q:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/Executor;

    new-instance p2, LB4/l;

    const/16 p3, 0x16

    invoke-direct {p2, p3, p5}, LB4/l;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a()Lj2/q;
    .locals 2

    sget-object v0, Lj2/q;->e:Lj2/k;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lj2/k;->u:LR4/a;

    invoke-interface {v0}, LR4/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj2/q;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lj2/q;->e:Lj2/k;

    if-nez v0, :cond_1

    const-class v0, Lj2/q;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lj2/q;->e:Lj2/k;

    if-nez v1, :cond_0

    new-instance v1, LC2/c;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, v1, LC2/c;->b:Landroid/content/Context;

    invoke-virtual {v1}, LC2/c;->b()Lj2/k;

    move-result-object p0

    sput-object p0, Lj2/q;->e:Lj2/k;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method


# virtual methods
.method public final c(Lj2/l;)Lj2/p;
    .locals 6

    new-instance v0, Lj2/p;

    if-eqz p1, :cond_0

    sget-object v1, Lh2/a;->d:Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Lg2/b;

    const-string v2, "proto"

    invoke-direct {v1, v2}, Lg2/b;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    :goto_0
    invoke-static {}, Lj2/j;->a()LJ/l;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "cct"

    iput-object v3, v2, LJ/l;->r:Ljava/lang/Object;

    check-cast p1, Lh2/a;

    iget-object v3, p1, Lh2/a;->a:Ljava/lang/String;

    iget-object p1, p1, Lh2/a;->b:Ljava/lang/String;

    if-nez p1, :cond_1

    if-nez v3, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "1$"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\\"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :goto_1
    iput-object p1, v2, LJ/l;->s:Ljava/lang/Object;

    invoke-virtual {v2}, LJ/l;->B()Lj2/j;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Lj2/p;-><init>(Ljava/util/Set;Lj2/j;Lj2/q;)V

    return-object v0
.end method
