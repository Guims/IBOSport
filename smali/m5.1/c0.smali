.class public final Lm5/c0;
.super Ljava/lang/Object;

# interfaces
.implements Lm5/D;
.implements Lm5/i;


# static fields
.field public static final b:Lm5/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm5/c0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lm5/c0;->b:Lm5/c0;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final getParent()Lm5/Q;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "NonDisposableHandle"

    return-object v0
.end method
