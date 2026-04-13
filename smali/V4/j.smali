.class public final LV4/j;
.super Ljava/lang/Object;

# interfaces
.implements LV4/i;
.implements Ljava/io/Serializable;


# static fields
.field public static final b:LV4/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LV4/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LV4/j;->b:LV4/j;

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ld5/p;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public final h(LV4/h;)LV4/g;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final r(LV4/h;)LV4/i;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final s(LV4/i;)LV4/i;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "EmptyCoroutineContext"

    return-object v0
.end method
