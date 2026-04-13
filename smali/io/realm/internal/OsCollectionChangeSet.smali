.class public Lio/realm/internal/OsCollectionChangeSet;
.super Ljava/lang/Object;

# interfaces
.implements Lio/realm/p;
.implements Lio/realm/internal/h;


# static fields
.field public static final r:J


# instance fields
.field public final b:J

.field public final q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lio/realm/internal/OsCollectionChangeSet;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/OsCollectionChangeSet;->r:J

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/realm/internal/OsCollectionChangeSet;->b:J

    iput-boolean p3, p0, Lio/realm/internal/OsCollectionChangeSet;->q:Z

    sget-object p1, Lio/realm/internal/g;->b:Lio/realm/internal/g;

    invoke-virtual {p1, p0}, Lio/realm/internal/g;->a(Lio/realm/internal/h;)V

    return-void
.end method

.method public static c([I)[LJ/q;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [LJ/q;

    return-object p0

    :cond_0
    array-length v1, p0

    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [LJ/q;

    :goto_0
    if-ge v0, v1, :cond_1

    new-instance v3, LJ/q;

    mul-int/lit8 v4, v0, 0x2

    aget v5, p0, v4

    add-int/lit8 v4, v4, 0x1

    aget v4, p0, v4

    const/4 v6, 0x1

    invoke-direct {v3, v5, v4, v6}, LJ/q;-><init>(III)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private static native nativeGetRanges(JI)[I
.end method


# virtual methods
.method public a()Z
    .locals 4

    iget-wide v0, p0, Lio/realm/internal/OsCollectionChangeSet;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lio/realm/internal/OsCollectionChangeSet;->q:Z

    return v0
.end method

.method public d()[LJ/q;
    .locals 3

    iget-wide v0, p0, Lio/realm/internal/OsCollectionChangeSet;->b:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lio/realm/internal/OsCollectionChangeSet;->nativeGetRanges(JI)[I

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/OsCollectionChangeSet;->c([I)[LJ/q;

    move-result-object v0

    return-object v0
.end method

.method public e()[LJ/q;
    .locals 3

    iget-wide v0, p0, Lio/realm/internal/OsCollectionChangeSet;->b:J

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lio/realm/internal/OsCollectionChangeSet;->nativeGetRanges(JI)[I

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/OsCollectionChangeSet;->c([I)[LJ/q;

    move-result-object v0

    return-object v0
.end method

.method public g()[LJ/q;
    .locals 3

    iget-wide v0, p0, Lio/realm/internal/OsCollectionChangeSet;->b:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/realm/internal/OsCollectionChangeSet;->nativeGetRanges(JI)[I

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/OsCollectionChangeSet;->c([I)[LJ/q;

    move-result-object v0

    return-object v0
.end method

.method public getNativeFinalizerPtr()J
    .locals 2

    sget-wide v0, Lio/realm/internal/OsCollectionChangeSet;->r:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsCollectionChangeSet;->b:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lio/realm/internal/OsCollectionChangeSet;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "Change set is empty."

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Deletion Ranges: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/realm/internal/OsCollectionChangeSet;->g()[LJ/q;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nInsertion Ranges: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/internal/OsCollectionChangeSet;->d()[LJ/q;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nChange Ranges: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/internal/OsCollectionChangeSet;->e()[LJ/q;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
