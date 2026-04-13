.class public final LQ5/a;
.super Ljava/lang/Object;

# interfaces
.implements LO5/a;
.implements Ljava/io/Serializable;


# static fields
.field public static final b:LQ5/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LQ5/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LQ5/a;->b:LQ5/a;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "NOP"

    return-object v0
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final n(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final varargs q(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final varargs r([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final s(Ljava/lang/String;Ljavax/net/ssl/SSLException;)V
    .locals 0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(NOP)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final y(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final z(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
