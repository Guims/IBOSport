.class public final Li2/e;
.super Ljava/lang/Object;

# interfaces
.implements LR3/d;


# static fields
.field public static final a:Li2/e;

.field public static final b:LR3/c;

.field public static final c:LR3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Li2/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Li2/e;->a:Li2/e;

    const-string v0, "privacyContext"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Li2/e;->b:LR3/c;

    const-string v0, "productIdOrigin"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Li2/e;->c:LR3/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Li2/A;

    check-cast p2, LR3/e;

    check-cast p1, Li2/o;

    iget-object p1, p1, Li2/o;->a:Li2/r;

    sget-object v0, Li2/e;->b:LR3/c;

    invoke-interface {p2, v0, p1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object p1, Li2/e;->c:LR3/c;

    sget-object v0, Li2/z;->b:Li2/z;

    invoke-interface {p2, p1, v0}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    return-void
.end method
