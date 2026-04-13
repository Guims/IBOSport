.class public final Li2/f;
.super Ljava/lang/Object;

# interfaces
.implements LR3/d;


# static fields
.field public static final a:Li2/f;

.field public static final b:LR3/c;

.field public static final c:LR3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Li2/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Li2/f;->a:Li2/f;

    const-string v0, "clearBlob"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Li2/f;->b:LR3/c;

    const-string v0, "encryptedBlob"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Li2/f;->c:LR3/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Li2/B;

    check-cast p2, LR3/e;

    check-cast p1, Li2/p;

    iget-object v0, p1, Li2/p;->a:[B

    sget-object v1, Li2/f;->b:LR3/c;

    invoke-interface {p2, v1, v0}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, Li2/f;->c:LR3/c;

    iget-object p1, p1, Li2/p;->b:[B

    invoke-interface {p2, v0, p1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    return-void
.end method
