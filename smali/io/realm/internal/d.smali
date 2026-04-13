.class public final Lio/realm/internal/d;
.super Lio/realm/internal/OsCollectionChangeSet;


# static fields
.field public static final s:[LJ/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [LJ/q;

    sput-object v0, Lio/realm/internal/d;->s:[LJ/q;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lio/realm/internal/OsCollectionChangeSet;->q:Z

    return v0
.end method

.method public final d()[LJ/q;
    .locals 1

    sget-object v0, Lio/realm/internal/d;->s:[LJ/q;

    return-object v0
.end method

.method public final e()[LJ/q;
    .locals 1

    sget-object v0, Lio/realm/internal/d;->s:[LJ/q;

    return-object v0
.end method

.method public final g()[LJ/q;
    .locals 1

    sget-object v0, Lio/realm/internal/d;->s:[LJ/q;

    return-object v0
.end method

.method public final getNativeFinalizerPtr()J
    .locals 2

    sget-wide v0, Lio/realm/internal/OsCollectionChangeSet;->r:J

    return-wide v0
.end method

.method public final getNativePtr()J
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsCollectionChangeSet;->b:J

    return-wide v0
.end method
