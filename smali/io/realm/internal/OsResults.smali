.class public Lio/realm/internal/OsResults;
.super Ljava/lang/Object;

# interfaces
.implements Lio/realm/internal/h;
.implements Lio/realm/internal/ObservableCollection;


# static fields
.field public static final v:J

.field public static final synthetic w:I


# instance fields
.field public final b:J

.field public final q:Lio/realm/internal/OsSharedRealm;

.field public final r:Lio/realm/internal/Table;

.field public s:Z

.field public t:Z

.field public final u:Lio/realm/internal/o;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lio/realm/internal/OsResults;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/OsResults;->v:J

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/OsResults;->t:Z

    new-instance v1, Lio/realm/internal/o;

    invoke-direct {v1}, Lio/realm/internal/o;-><init>()V

    iput-object v1, p0, Lio/realm/internal/OsResults;->u:Lio/realm/internal/o;

    iput-object p1, p0, Lio/realm/internal/OsResults;->q:Lio/realm/internal/OsSharedRealm;

    iget-object p1, p1, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/g;

    iput-object p2, p0, Lio/realm/internal/OsResults;->r:Lio/realm/internal/Table;

    iput-wide p3, p0, Lio/realm/internal/OsResults;->b:J

    invoke-virtual {p1, p0}, Lio/realm/internal/g;->a(Lio/realm/internal/h;)V

    invoke-static {p3, p4}, Lio/realm/internal/OsResults;->nativeGetMode(J)B

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p2, :cond_1

    const/4 p3, 0x2

    if-eq p1, p3, :cond_1

    const/4 p3, 0x3

    if-eq p1, p3, :cond_2

    const/4 p3, 0x4

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Invalid value: "

    invoke-static {p1, p3}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    move v0, p2

    :cond_2
    iput-boolean v0, p0, Lio/realm/internal/OsResults;->s:Z

    return-void
.end method

.method private static native nativeClear(J)V
.end method

.method public static native nativeCreateResults(JJ)J
.end method

.method private static native nativeCreateSnapshot(J)J
.end method

.method private static native nativeEvaluateQueryIfNeeded(JZ)V
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private static native nativeGetMode(J)B
.end method

.method private static native nativeGetRow(JI)J
.end method

.method private static native nativeIsValid(J)Z
.end method

.method private static native nativeSize(J)J
.end method

.method private native nativeStartListening(J)V
.end method

.method private native nativeStopListening(J)V
.end method


# virtual methods
.method public final a(Lio/realm/T;Lio/realm/q;)V
    .locals 3

    iget-object v0, p0, Lio/realm/internal/OsResults;->u:Lio/realm/internal/o;

    iget-object v1, v0, Lio/realm/internal/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lio/realm/internal/OsResults;->b:J

    invoke-direct {p0, v1, v2}, Lio/realm/internal/OsResults;->nativeStartListening(J)V

    :cond_0
    new-instance v1, Lio/realm/internal/k;

    invoke-direct {v1, p1, p2}, Lio/realm/internal/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lio/realm/internal/o;->a(Lio/realm/internal/n;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsResults;->b:J

    invoke-static {v0, v1}, Lio/realm/internal/OsResults;->nativeClear(J)V

    return-void
.end method

.method public final c()Lio/realm/internal/OsResults;
    .locals 5

    iget-boolean v0, p0, Lio/realm/internal/OsResults;->t:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lio/realm/internal/OsResults;

    iget-wide v1, p0, Lio/realm/internal/OsResults;->b:J

    invoke-static {v1, v2}, Lio/realm/internal/OsResults;->nativeCreateSnapshot(J)J

    move-result-wide v1

    iget-object v3, p0, Lio/realm/internal/OsResults;->q:Lio/realm/internal/OsSharedRealm;

    iget-object v4, p0, Lio/realm/internal/OsResults;->r:Lio/realm/internal/Table;

    invoke-direct {v0, v3, v4, v1, v2}, Lio/realm/internal/OsResults;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;J)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/realm/internal/OsResults;->t:Z

    return-object v0
.end method

.method public final d(I)Lio/realm/internal/UncheckedRow;
    .locals 4

    iget-wide v0, p0, Lio/realm/internal/OsResults;->b:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsResults;->nativeGetRow(JI)J

    move-result-wide v0

    iget-object p1, p0, Lio/realm/internal/OsResults;->r:Lio/realm/internal/Table;

    iget-object v2, p1, Lio/realm/internal/Table;->q:Lio/realm/internal/g;

    new-instance v3, Lio/realm/internal/UncheckedRow;

    invoke-direct {v3, v2, p1, v0, v1}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/g;Lio/realm/internal/Table;J)V

    return-object v3
.end method

.method public final e()Z
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsResults;->b:J

    invoke-static {v0, v1}, Lio/realm/internal/OsResults;->nativeIsValid(J)Z

    move-result v0

    return v0
.end method

.method public final f()V
    .locals 4

    const-string v0, "Illegal Argument: "

    iget-boolean v1, p0, Lio/realm/internal/OsResults;->s:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-wide v1, p0, Lio/realm/internal/OsResults;->b:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lio/realm/internal/OsResults;->nativeEvaluateQueryIfNeeded(JZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_2

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Cannot sort on a collection property"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lio/realm/internal/OsResults;->notifyChangeListeners(J)V

    return-void

    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final g()V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lio/realm/internal/OsResults;->u:Lio/realm/internal/o;

    iput-boolean v0, v1, Lio/realm/internal/o;->b:Z

    iget-object v0, v1, Lio/realm/internal/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-wide v0, p0, Lio/realm/internal/OsResults;->b:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/OsResults;->nativeStopListening(J)V

    return-void
.end method

.method public final getNativeFinalizerPtr()J
    .locals 2

    sget-wide v0, Lio/realm/internal/OsResults;->v:J

    return-wide v0
.end method

.method public final getNativePtr()J
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsResults;->b:J

    return-wide v0
.end method

.method public final h(Lio/realm/T;Lio/realm/S;)V
    .locals 1

    iget-object v0, p0, Lio/realm/internal/OsResults;->u:Lio/realm/internal/o;

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/o;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, v0, Lio/realm/internal/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide p1, p0, Lio/realm/internal/OsResults;->b:J

    invoke-direct {p0, p1, p2}, Lio/realm/internal/OsResults;->nativeStopListening(J)V

    :cond_0
    return-void
.end method

.method public final i()J
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsResults;->b:J

    invoke-static {v0, v1}, Lio/realm/internal/OsResults;->nativeSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final notifyChangeListeners(J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x1

    if-nez v2, :cond_0

    new-instance p1, Lio/realm/internal/d;

    invoke-direct {p1, v0, v1, v3}, Lio/realm/internal/OsCollectionChangeSet;-><init>(JZ)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/realm/internal/OsCollectionChangeSet;

    iget-boolean v1, p0, Lio/realm/internal/OsResults;->s:Z

    xor-int/2addr v1, v3

    invoke-direct {v0, p1, p2, v1}, Lio/realm/internal/OsCollectionChangeSet;-><init>(JZ)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p1}, Lio/realm/internal/OsCollectionChangeSet;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lio/realm/internal/OsResults;->s:Z

    if-eqz p2, :cond_1

    return-void

    :cond_1
    iput-boolean v3, p0, Lio/realm/internal/OsResults;->s:Z

    new-instance p2, Lio/realm/internal/i;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p1}, Lio/realm/internal/i;-><init>(ILjava/lang/Object;)V

    iget-object p1, p0, Lio/realm/internal/OsResults;->u:Lio/realm/internal/o;

    invoke-virtual {p1, p2}, Lio/realm/internal/o;->b(Lio/realm/internal/m;)V

    return-void
.end method
