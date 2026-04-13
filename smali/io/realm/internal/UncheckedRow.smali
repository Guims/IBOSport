.class public Lio/realm/internal/UncheckedRow;
.super Ljava/lang/Object;

# interfaces
.implements Lio/realm/internal/h;
.implements Lio/realm/internal/A;


# static fields
.field public static final s:J

.field public static final synthetic t:I


# instance fields
.field public final b:Lio/realm/internal/g;

.field public final q:Lio/realm/internal/Table;

.field public final r:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lio/realm/internal/UncheckedRow;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/UncheckedRow;->s:J

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/g;Lio/realm/internal/Table;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/realm/internal/UncheckedRow;->b:Lio/realm/internal/g;

    iput-object p2, p0, Lio/realm/internal/UncheckedRow;->q:Lio/realm/internal/Table;

    iput-wide p3, p0, Lio/realm/internal/UncheckedRow;->r:J

    invoke-virtual {p1, p0}, Lio/realm/internal/g;->a(Lio/realm/internal/h;)V

    return-void
.end method

.method private static native nativeGetFinalizerPtr()J
.end method


# virtual methods
.method public final A(J)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->r:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetString(JJ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public B(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;
    .locals 0

    new-instance p3, Lio/realm/internal/OsList;

    invoke-direct {p3, p0, p1, p2}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    return-object p3
.end method

.method public C(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;
    .locals 0

    new-instance p3, Lio/realm/internal/OsMap;

    invoke-direct {p3, p0, p1, p2}, Lio/realm/internal/OsMap;-><init>(Lio/realm/internal/UncheckedRow;J)V

    return-object p3
.end method

.method public final D(J)Lio/realm/RealmFieldType;
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->r:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetColumnType(JJ)I

    move-result p1

    invoke-static {p1}, Lio/realm/RealmFieldType;->fromNativeValue(I)Lio/realm/RealmFieldType;

    move-result-object p1

    return-object p1
.end method

.method public E(Lio/realm/internal/OsSharedRealm;)Lio/realm/internal/A;
    .locals 6

    invoke-virtual {p0}, Lio/realm/internal/UncheckedRow;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lio/realm/internal/f;->b:Lio/realm/internal/f;

    return-object p1

    :cond_0
    new-instance v0, Lio/realm/internal/UncheckedRow;

    iget-object v1, p0, Lio/realm/internal/UncheckedRow;->q:Lio/realm/internal/Table;

    invoke-virtual {v1, p1}, Lio/realm/internal/Table;->c(Lio/realm/internal/OsSharedRealm;)Lio/realm/internal/Table;

    move-result-object v1

    iget-wide v2, p0, Lio/realm/internal/UncheckedRow;->r:J

    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v4

    invoke-virtual {p0, v2, v3, v4, v5}, Lio/realm/internal/UncheckedRow;->nativeFreeze(JJ)J

    move-result-wide v2

    iget-object p1, p0, Lio/realm/internal/UncheckedRow;->b:Lio/realm/internal/g;

    invoke-direct {v0, p1, v1, v2, v3}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/g;Lio/realm/internal/Table;J)V

    return-object v0
.end method

.method public final F()J
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->r:J

    invoke-virtual {p0, v0, v1}, Lio/realm/internal/UncheckedRow;->nativeGetObjectKey(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(J)Lorg/bson/types/Decimal128;
    .locals 4

    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->r:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetDecimal128(JJ)[J

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    aget-wide v0, p1, p2

    const/4 p2, 0x0

    aget-wide v2, p1, p2

    invoke-static {v0, v1, v2, v3}, Lorg/bson/types/Decimal128;->fromIEEE754BIDEncoding(JJ)Lorg/bson/types/Decimal128;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(JLjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->q:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->a()V

    iget-wide v2, p0, Lio/realm/internal/UncheckedRow;->r:J

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/UncheckedRow;->nativeSetString(JJLjava/lang/String;)V

    return-void
.end method

.method public final c(JF)V
    .locals 7

    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->q:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->a()V

    iget-wide v2, p0, Lio/realm/internal/UncheckedRow;->r:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/UncheckedRow;->nativeSetFloat(JJF)V

    return-void
.end method

.method public final d()Lio/realm/internal/Table;
    .locals 1

    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->q:Lio/realm/internal/Table;

    return-object v0
.end method

.method public final e(JZ)V
    .locals 7

    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->q:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->a()V

    iget-wide v2, p0, Lio/realm/internal/UncheckedRow;->r:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/UncheckedRow;->nativeSetBoolean(JJZ)V

    return-void
.end method

.method public f(J)Lio/realm/internal/OsSet;
    .locals 1

    new-instance v0, Lio/realm/internal/OsSet;

    invoke-direct {v0, p0, p1, p2}, Lio/realm/internal/OsSet;-><init>(Lio/realm/internal/UncheckedRow;J)V

    return-object v0
.end method

.method public final g(J)Lorg/bson/types/ObjectId;
    .locals 3

    new-instance v0, Lorg/bson/types/ObjectId;

    iget-wide v1, p0, Lio/realm/internal/UncheckedRow;->r:J

    invoke-virtual {p0, v1, v2, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetObjectId(JJ)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bson/types/ObjectId;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final getColumnNames()[Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->r:J

    invoke-virtual {p0, v0, v1}, Lio/realm/internal/UncheckedRow;->nativeGetColumnNames(J)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNativeFinalizerPtr()J
    .locals 2

    sget-wide v0, Lio/realm/internal/UncheckedRow;->s:J

    return-wide v0
.end method

.method public final getNativePtr()J
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->r:J

    return-wide v0
.end method

.method public final h(J)Ljava/util/UUID;
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->r:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetUUID(JJ)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    return-object p1
.end method

.method public final i(J)Z
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->r:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetBoolean(JJ)Z

    move-result p1

    return p1
.end method

.method public final isValid()Z
    .locals 4

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lio/realm/internal/UncheckedRow;->r:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, v3}, Lio/realm/internal/UncheckedRow;->nativeIsValid(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j(J)J
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->r:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetLong(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final k(JJ)V
    .locals 8

    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->q:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->a()V

    iget-wide v2, p0, Lio/realm/internal/UncheckedRow;->r:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/UncheckedRow;->nativeSetLink(JJJ)V

    return-void
.end method

.method public l(J)Lio/realm/internal/OsList;
    .locals 1

    new-instance v0, Lio/realm/internal/OsList;

    invoke-direct {v0, p0, p1, p2}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    return-object v0
.end method

.method public final m(JJ)V
    .locals 8

    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->q:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->a()V

    iget-wide v2, p0, Lio/realm/internal/UncheckedRow;->r:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/UncheckedRow;->nativeSetLong(JJJ)V

    return-void
.end method

.method public final n(J)Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lio/realm/internal/UncheckedRow;->r:J

    invoke-virtual {p0, v1, v2, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetTimestamp(JJ)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public native nativeFreeze(JJ)J
.end method

.method public native nativeGetBoolean(JJ)Z
.end method

.method public native nativeGetByteArray(JJ)[B
.end method

.method public native nativeGetColumnKey(JLjava/lang/String;)J
.end method

.method public native nativeGetColumnNames(J)[Ljava/lang/String;
.end method

.method public native nativeGetColumnType(JJ)I
.end method

.method public native nativeGetDecimal128(JJ)[J
.end method

.method public native nativeGetDouble(JJ)D
.end method

.method public native nativeGetFloat(JJ)F
.end method

.method public native nativeGetLink(JJ)J
.end method

.method public native nativeGetLong(JJ)J
.end method

.method public native nativeGetObjectId(JJ)Ljava/lang/String;
.end method

.method public native nativeGetObjectKey(J)J
.end method

.method public native nativeGetRealmAny(JJ)J
.end method

.method public native nativeGetString(JJ)Ljava/lang/String;
.end method

.method public native nativeGetTimestamp(JJ)J
.end method

.method public native nativeGetUUID(JJ)Ljava/lang/String;
.end method

.method public native nativeIsNull(JJ)Z
.end method

.method public native nativeIsNullLink(JJ)Z
.end method

.method public native nativeIsValid(J)Z
.end method

.method public native nativeNullifyLink(JJ)V
.end method

.method public native nativeSetBoolean(JJZ)V
.end method

.method public native nativeSetFloat(JJF)V
.end method

.method public native nativeSetLink(JJJ)V
.end method

.method public native nativeSetLong(JJJ)V
.end method

.method public native nativeSetNull(JJ)V
.end method

.method public native nativeSetString(JJLjava/lang/String;)V
.end method

.method public o(J)Z
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->r:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeIsNull(JJ)Z

    move-result p1

    return p1
.end method

.method public final p(J)V
    .locals 2

    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->q:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->a()V

    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->r:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeNullifyLink(JJ)V

    return-void
.end method

.method public final q(Ljava/lang/String;)J
    .locals 2

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->r:J

    invoke-virtual {p0, v0, v1, p1}, Lio/realm/internal/UncheckedRow;->nativeGetColumnKey(JLjava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Column name can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r(J)Lio/realm/internal/OsMap;
    .locals 1

    new-instance v0, Lio/realm/internal/OsMap;

    invoke-direct {v0, p0, p1, p2}, Lio/realm/internal/OsMap;-><init>(Lio/realm/internal/UncheckedRow;J)V

    return-object v0
.end method

.method public s(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;
    .locals 0

    new-instance p3, Lio/realm/internal/OsSet;

    invoke-direct {p3, p0, p1, p2}, Lio/realm/internal/OsSet;-><init>(Lio/realm/internal/UncheckedRow;J)V

    return-object p3
.end method

.method public final t(J)Lio/realm/internal/core/NativeRealmAny;
    .locals 3

    new-instance v0, Lio/realm/internal/core/NativeRealmAny;

    iget-wide v1, p0, Lio/realm/internal/UncheckedRow;->r:J

    invoke-virtual {p0, v1, v2, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetRealmAny(JJ)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lio/realm/internal/core/NativeRealmAny;-><init>(J)V

    return-object v0
.end method

.method public u(J)Z
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->r:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeIsNullLink(JJ)Z

    move-result p1

    return p1
.end method

.method public v(J)V
    .locals 2

    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->q:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->a()V

    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->r:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeSetNull(JJ)V

    return-void
.end method

.method public final w(J)[B
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->r:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetByteArray(JJ)[B

    move-result-object p1

    return-object p1
.end method

.method public final x(J)D
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->r:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetDouble(JJ)D

    move-result-wide p1

    return-wide p1
.end method

.method public final y(J)J
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->r:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetLink(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final z(J)F
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->r:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetFloat(JJ)F

    move-result p1

    return p1
.end method
