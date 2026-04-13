.class public final Lj4/a;
.super Ljava/lang/Object;

# interfaces
.implements LR4/a;
.implements Li4/a;


# static fields
.field public static final r:Ljava/lang/Object;


# instance fields
.field public volatile b:LR4/a;

.field public volatile q:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lj4/a;->r:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LR4/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lj4/a;->r:Ljava/lang/Object;

    iput-object v0, p0, Lj4/a;->q:Ljava/lang/Object;

    iput-object p1, p0, Lj4/a;->b:LR4/a;

    return-void
.end method

.method public static a(Lj4/b;)LR4/a;
    .locals 1

    instance-of v0, p0, Lj4/a;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lj4/a;

    invoke-direct {v0, p0}, Lj4/a;-><init>(LR4/a;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lj4/a;->q:Ljava/lang/Object;

    sget-object v1, Lj4/a;->r:Ljava/lang/Object;

    if-ne v0, v1, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lj4/a;->q:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lj4/a;->b:LR4/a;

    invoke-interface {v0}, LR4/a;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lj4/a;->q:Ljava/lang/Object;

    if-eq v2, v1, :cond_1

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Scoped provider was invoked recursively returning different results: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " & "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". This is likely due to a circular dependency."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iput-object v0, p0, Lj4/a;->q:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lj4/a;->b:LR4/a;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit p0

    return-object v0

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    return-object v0
.end method
