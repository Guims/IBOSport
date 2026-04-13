.class public final enum Lio/realm/internal/f;
.super Ljava/lang/Enum;

# interfaces
.implements Lio/realm/internal/A;


# static fields
.field public static final enum b:Lio/realm/internal/f;

.field public static final synthetic q:[Lio/realm/internal/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/realm/internal/f;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/internal/f;->b:Lio/realm/internal/f;

    filled-new-array {v0}, [Lio/realm/internal/f;

    move-result-object v0

    sput-object v0, Lio/realm/internal/f;->q:[Lio/realm/internal/f;

    return-void
.end method

.method public static G()Ljava/lang/IllegalStateException;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Object is no longer managed by Realm. Has it been deleted?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/internal/f;
    .locals 1

    const-class v0, Lio/realm/internal/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/realm/internal/f;

    return-object p0
.end method

.method public static values()[Lio/realm/internal/f;
    .locals 1

    sget-object v0, Lio/realm/internal/f;->q:[Lio/realm/internal/f;

    invoke-virtual {v0}, [Lio/realm/internal/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/internal/f;

    return-object v0
.end method


# virtual methods
.method public final A(J)Ljava/lang/String;
    .locals 0

    invoke-static {}, Lio/realm/internal/f;->G()Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public final B(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;
    .locals 0

    invoke-static {}, Lio/realm/internal/f;->G()Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public final C(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;
    .locals 0

    invoke-static {}, Lio/realm/internal/f;->G()Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public final D(J)Lio/realm/RealmFieldType;
    .locals 0

    invoke-static {}, Lio/realm/internal/f;->G()Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public final E(Lio/realm/internal/OsSharedRealm;)Lio/realm/internal/A;
    .locals 0

    sget-object p1, Lio/realm/internal/f;->b:Lio/realm/internal/f;

    return-object p1
.end method

.method public final F()J
    .locals 1

    invoke-static {}, Lio/realm/internal/f;->G()Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public final a(J)Lorg/bson/types/Decimal128;
    .locals 0

    invoke-static {}, Lio/realm/internal/f;->G()Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public final b(JLjava/lang/String;)V
    .locals 0

    invoke-static {}, Lio/realm/internal/f;->G()Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public final c(JF)V
    .locals 0

    invoke-static {}, Lio/realm/internal/f;->G()Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public final d()Lio/realm/internal/Table;
    .locals 1

    invoke-static {}, Lio/realm/internal/f;->G()Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public final e(JZ)V
    .locals 0

    invoke-static {}, Lio/realm/internal/f;->G()Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public final f(J)Lio/realm/internal/OsSet;
    .locals 0

    invoke-static {}, Lio/realm/internal/f;->G()Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public final g(J)Lorg/bson/types/ObjectId;
    .locals 0

    invoke-static {}, Lio/realm/internal/f;->G()Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public final getColumnNames()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lio/realm/internal/f;->G()Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public final h(J)Ljava/util/UUID;
    .locals 0

    invoke-static {}, Lio/realm/internal/f;->G()Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public final i(J)Z
    .locals 0

    invoke-static {}, Lio/realm/internal/f;->G()Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public final isValid()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j(J)J
    .locals 0

    invoke-static {}, Lio/realm/internal/f;->G()Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public final k(JJ)V
    .locals 0

    invoke-static {}, Lio/realm/internal/f;->G()Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public final l(J)Lio/realm/internal/OsList;
    .locals 0

    invoke-static {}, Lio/realm/internal/f;->G()Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public final m(JJ)V
    .locals 0

    invoke-static {}, Lio/realm/internal/f;->G()Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public final n(J)Ljava/util/Date;
    .locals 0

    invoke-static {}, Lio/realm/internal/f;->G()Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public final o(J)Z
    .locals 0

    invoke-static {}, Lio/realm/internal/f;->G()Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public final p(J)V
    .locals 0

    invoke-static {}, Lio/realm/internal/f;->G()Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public final q(Ljava/lang/String;)J
    .locals 0

    invoke-static {}, Lio/realm/internal/f;->G()Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public final r(J)Lio/realm/internal/OsMap;
    .locals 0

    invoke-static {}, Lio/realm/internal/f;->G()Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public final s(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;
    .locals 0

    invoke-static {}, Lio/realm/internal/f;->G()Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public final t(J)Lio/realm/internal/core/NativeRealmAny;
    .locals 0

    invoke-static {}, Lio/realm/internal/f;->G()Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public final u(J)Z
    .locals 0

    invoke-static {}, Lio/realm/internal/f;->G()Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public final v(J)V
    .locals 0

    invoke-static {}, Lio/realm/internal/f;->G()Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public final w(J)[B
    .locals 0

    invoke-static {}, Lio/realm/internal/f;->G()Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public final x(J)D
    .locals 0

    invoke-static {}, Lio/realm/internal/f;->G()Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public final y(J)J
    .locals 0

    invoke-static {}, Lio/realm/internal/f;->G()Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public final z(J)F
    .locals 0

    invoke-static {}, Lio/realm/internal/f;->G()Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method
