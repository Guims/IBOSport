.class final Lio/realm/internal/NativeObjectReference;
.super Ljava/lang/ref/PhantomReference;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference<",
        "Lio/realm/internal/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lio/realm/internal/i;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:Lio/realm/internal/g;

.field public d:Lio/realm/internal/NativeObjectReference;

.field public e:Lio/realm/internal/NativeObjectReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/realm/internal/i;

    invoke-direct {v0}, Lio/realm/internal/i;-><init>()V

    sput-object v0, Lio/realm/internal/NativeObjectReference;->f:Lio/realm/internal/i;

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/g;Lio/realm/internal/h;Ljava/lang/ref/ReferenceQueue;)V
    .locals 2

    invoke-direct {p0, p2, p3}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {p2}, Lio/realm/internal/h;->getNativePtr()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/internal/NativeObjectReference;->a:J

    invoke-interface {p2}, Lio/realm/internal/h;->getNativeFinalizerPtr()J

    move-result-wide p2

    iput-wide p2, p0, Lio/realm/internal/NativeObjectReference;->b:J

    iput-object p1, p0, Lio/realm/internal/NativeObjectReference;->c:Lio/realm/internal/g;

    sget-object p1, Lio/realm/internal/NativeObjectReference;->f:Lio/realm/internal/i;

    monitor-enter p1

    const/4 p2, 0x0

    :try_start_0
    iput-object p2, p0, Lio/realm/internal/NativeObjectReference;->d:Lio/realm/internal/NativeObjectReference;

    iget-object p2, p1, Lio/realm/internal/i;->b:Ljava/lang/Object;

    check-cast p2, Lio/realm/internal/NativeObjectReference;

    iput-object p2, p0, Lio/realm/internal/NativeObjectReference;->e:Lio/realm/internal/NativeObjectReference;

    if-eqz p2, :cond_0

    iput-object p0, p2, Lio/realm/internal/NativeObjectReference;->d:Lio/realm/internal/NativeObjectReference;

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    iput-object p0, p1, Lio/realm/internal/i;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public static native nativeCleanUp(JJ)V
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lio/realm/internal/NativeObjectReference;->c:Lio/realm/internal/g;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lio/realm/internal/NativeObjectReference;->b:J

    iget-wide v3, p0, Lio/realm/internal/NativeObjectReference;->a:J

    invoke-static {v1, v2, v3, v4}, Lio/realm/internal/NativeObjectReference;->nativeCleanUp(JJ)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget-object v1, Lio/realm/internal/NativeObjectReference;->f:Lio/realm/internal/i;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lio/realm/internal/NativeObjectReference;->e:Lio/realm/internal/NativeObjectReference;

    iget-object v2, p0, Lio/realm/internal/NativeObjectReference;->d:Lio/realm/internal/NativeObjectReference;

    const/4 v3, 0x0

    iput-object v3, p0, Lio/realm/internal/NativeObjectReference;->e:Lio/realm/internal/NativeObjectReference;

    iput-object v3, p0, Lio/realm/internal/NativeObjectReference;->d:Lio/realm/internal/NativeObjectReference;

    if-eqz v2, :cond_0

    iput-object v0, v2, Lio/realm/internal/NativeObjectReference;->e:Lio/realm/internal/NativeObjectReference;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iput-object v0, v1, Lio/realm/internal/i;->b:Ljava/lang/Object;

    :goto_0
    if-eqz v0, :cond_1

    iput-object v2, v0, Lio/realm/internal/NativeObjectReference;->d:Lio/realm/internal/NativeObjectReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v1

    return-void

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
