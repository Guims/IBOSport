.class public final LM1/g;
.super Ljava/lang/Object;

# interfaces
.implements Le2/b;


# instance fields
.field public final b:Ljava/security/MessageDigest;

.field public final q:Le2/e;


# direct methods
.method public constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Le2/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LM1/g;->q:Le2/e;

    iput-object p1, p0, LM1/g;->b:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public final d()Le2/e;
    .locals 1

    iget-object v0, p0, LM1/g;->q:Le2/e;

    return-object v0
.end method
