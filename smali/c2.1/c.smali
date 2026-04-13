.class public final Lc2/c;
.super Ljava/lang/Object;

# interfaces
.implements LI1/f;


# static fields
.field public static final b:Lc2/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc2/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc2/c;->b:Lc2/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/security/MessageDigest;)V
    .locals 0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "EmptySignature"

    return-object v0
.end method
