.class public final Li2/c;
.super Ljava/lang/Object;

# interfaces
.implements LR3/d;


# static fields
.field public static final a:Li2/c;

.field public static final b:LR3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Li2/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Li2/c;->a:Li2/c;

    const-string v0, "logRequest"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Li2/c;->b:LR3/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Li2/w;

    check-cast p2, LR3/e;

    check-cast p1, Li2/m;

    iget-object p1, p1, Li2/m;->a:Ljava/util/ArrayList;

    sget-object v0, Li2/c;->b:LR3/c;

    invoke-interface {p2, v0, p1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    return-void
.end method
