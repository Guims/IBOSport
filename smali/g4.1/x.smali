.class public final Lg4/x;
.super Ljava/lang/Object;


# static fields
.field public static final c:Lg4/t;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg4/t;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lg4/t;-><init>(I)V

    sput-object v0, Lg4/x;->c:Lg4/t;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg4/x;->a:Ljava/lang/String;

    iput-object p2, p0, Lg4/x;->b:Ljava/lang/String;

    return-void
.end method
