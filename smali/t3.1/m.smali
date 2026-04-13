.class public final Lt3/m;
.super LC2/b;


# static fields
.field public static final r:Lsun/misc/Unsafe;

.field public static final s:J

.field public static final t:J

.field public static final u:J

.field public static final v:J

.field public static final w:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "b"

    const-class v1, Lt3/n;

    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    new-instance v2, Lt3/l;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    :try_start_2
    const-class v3, Lt3/o;

    const-string v4, "r"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v2, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Lt3/m;->t:J

    const-string v4, "q"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v2, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Lt3/m;->s:J

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Lt3/m;->u:J

    const-string v3, "a"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Lt3/m;->v:J

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lt3/m;->w:J

    sput-object v2, Lt3/m;->r:Lsun/misc/Unsafe;
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not initialize intrinsics"

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final I(Lt3/n;Lt3/n;)V
    .locals 3

    sget-object v0, Lt3/m;->r:Lsun/misc/Unsafe;

    sget-wide v1, Lt3/m;->w:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public final J(Lt3/n;Ljava/lang/Thread;)V
    .locals 3

    sget-object v0, Lt3/m;->r:Lsun/misc/Unsafe;

    sget-wide v1, Lt3/m;->v:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public final g(Lt3/o;Lt3/c;Lt3/c;)Z
    .locals 6

    sget-object v0, Lt3/m;->r:Lsun/misc/Unsafe;

    sget-wide v2, Lt3/m;->s:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lt3/j;->a(Lsun/misc/Unsafe;Lt3/o;JLt3/c;Lt3/c;)Z

    move-result p1

    return p1
.end method

.method public final i(Lt3/o;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    sget-object v0, Lt3/m;->r:Lsun/misc/Unsafe;

    sget-wide v2, Lt3/m;->u:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lt3/k;->a(Lsun/misc/Unsafe;Lt3/o;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final j(Lt3/o;Lt3/n;Lt3/n;)Z
    .locals 6

    sget-object v0, Lt3/m;->r:Lsun/misc/Unsafe;

    sget-wide v2, Lt3/m;->t:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lt3/i;->a(Lsun/misc/Unsafe;Lt3/o;JLt3/n;Lt3/n;)Z

    move-result p1

    return p1
.end method

.method public final s(Lt3/o;)Lt3/c;
    .locals 3

    sget-object v0, Lt3/c;->d:Lt3/c;

    :cond_0
    iget-object v1, p1, Lt3/o;->q:Lt3/c;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v1, v0}, Lt3/m;->g(Lt3/o;Lt3/c;Lt3/c;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v1
.end method

.method public final t(Lt3/o;)Lt3/n;
    .locals 3

    sget-object v0, Lt3/n;->c:Lt3/n;

    :cond_0
    iget-object v1, p1, Lt3/o;->r:Lt3/n;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v1, v0}, Lt3/m;->j(Lt3/o;Lt3/n;Lt3/n;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v1
.end method
