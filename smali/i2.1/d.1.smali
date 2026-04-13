.class public final Li2/d;
.super Ljava/lang/Object;

# interfaces
.implements LR3/d;


# static fields
.field public static final a:Li2/d;

.field public static final b:LR3/c;

.field public static final c:LR3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Li2/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Li2/d;->a:Li2/d;

    const-string v0, "clientType"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Li2/d;->b:LR3/c;

    const-string v0, "androidClientInfo"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Li2/d;->c:LR3/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Li2/y;

    check-cast p2, LR3/e;

    check-cast p1, Li2/n;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Li2/x;->b:Li2/x;

    sget-object v1, Li2/d;->b:LR3/c;

    invoke-interface {p2, v1, v0}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, Li2/d;->c:LR3/c;

    iget-object p1, p1, Li2/n;->a:Li2/l;

    invoke-interface {p2, v0, p1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    return-void
.end method
