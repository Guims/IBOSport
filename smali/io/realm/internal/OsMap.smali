.class public Lio/realm/internal/OsMap;
.super Ljava/lang/Object;

# interfaces
.implements Lio/realm/internal/h;


# static fields
.field public static final q:J


# instance fields
.field public final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lio/realm/internal/OsMap;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/OsMap;->q:J

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/UncheckedRow;J)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lio/realm/internal/UncheckedRow;->q:Lio/realm/internal/Table;

    iget-object v0, v0, Lio/realm/internal/Table;->r:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v1

    iget-wide v3, p1, Lio/realm/internal/UncheckedRow;->r:J

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lio/realm/internal/OsMap;->nativeCreate(JJJ)[J

    move-result-object p1

    const/4 p2, 0x0

    aget-wide p2, p1, p2

    iput-wide p2, p0, Lio/realm/internal/OsMap;->b:J

    const/4 p2, 0x1

    aget-wide v1, p1, p2

    const-wide/16 v3, -0x1

    cmp-long p3, v1, v3

    if-eqz p3, :cond_0

    new-instance p3, Lio/realm/internal/Table;

    aget-wide v1, p1, p2

    invoke-direct {p3, v0, v1, v2}, Lio/realm/internal/Table;-><init>(Lio/realm/internal/OsSharedRealm;J)V

    :cond_0
    iget-object p1, v0, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/g;

    invoke-virtual {p1, p0}, Lio/realm/internal/g;->a(Lio/realm/internal/h;)V

    return-void
.end method

.method private static native nativeCreate(JJJ)[J
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private static native nativeSize(J)J
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsMap;->b:J

    invoke-static {v0, v1}, Lio/realm/internal/OsMap;->nativeSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getNativeFinalizerPtr()J
    .locals 2

    sget-wide v0, Lio/realm/internal/OsMap;->q:J

    return-wide v0
.end method

.method public final getNativePtr()J
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsMap;->b:J

    return-wide v0
.end method
