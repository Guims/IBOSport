.class public final Li2/k;
.super Ljava/lang/Object;

# interfaces
.implements LR3/d;


# static fields
.field public static final a:Li2/k;

.field public static final b:LR3/c;

.field public static final c:LR3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Li2/k;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Li2/k;->a:Li2/k;

    const-string v0, "networkType"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Li2/k;->b:LR3/c;

    const-string v0, "mobileSubtype"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Li2/k;->c:LR3/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Li2/I;

    check-cast p2, LR3/e;

    check-cast p1, Li2/v;

    iget-object v0, p1, Li2/v;->a:Li2/H;

    sget-object v1, Li2/k;->b:LR3/c;

    invoke-interface {p2, v1, v0}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, Li2/k;->c:LR3/c;

    iget-object p1, p1, Li2/v;->b:Li2/G;

    invoke-interface {p2, v0, p1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    return-void
.end method
