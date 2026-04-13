.class public final Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/ssl/HttpClientHostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier$HostNameType;
    }
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field private static final LOG:LO5/a;


# instance fields
.field private final publicSuffixMatcher:Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;->LOG:LO5/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;-><init>(Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;->publicSuffixMatcher:Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;

    return-void
.end method

.method public static determineHostFormat(Ljava/lang/String;)Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier$HostNameType;
    .locals 2

    invoke-static {p0}, Lorg/apache/hc/core5/net/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier$HostNameType;->IPv4:Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier$HostNameType;

    return-object p0

    :cond_0
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-static {p0}, Lorg/apache/hc/core5/net/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier$HostNameType;->IPv6:Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier$HostNameType;

    return-object p0

    :cond_2
    sget-object p0, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier$HostNameType;->DNS:Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier$HostNameType;

    return-object p0
.end method

.method public static extractCN(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lorg/apache/hc/client5/http/ssl/DistinguishedNameParser;->INSTANCE:Lorg/apache/hc/client5/http/ssl/DistinguishedNameParser;

    invoke-virtual {v1, p0}, Lorg/apache/hc/client5/http/ssl/DistinguishedNameParser;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/hc/core5/http/NameValuePair;

    invoke-interface {v2}, Lorg/apache/hc/core5/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/hc/core5/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v2}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Lorg/apache/hc/core5/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cn"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, " is not a valid X500 distinguished name"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-object v0
.end method

.method public static getSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/hc/client5/http/ssl/SubjectName;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "I)",
            "Ljava/util/List<",
            "Lorg/apache/hc/client5/http/ssl/SubjectName;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, p1, :cond_3

    const/4 v3, -0x1

    if-ne v3, p1, :cond_1

    :cond_3
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_1

    new-instance v3, Lorg/apache/hc/client5/http/ssl/SubjectName;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v3, v1, v2}, Lorg/apache/hc/client5/http/ssl/SubjectName;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    return-object v0

    :catch_0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public static matchCN(Ljava/lang/String;Ljava/security/cert/X509Certificate;Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;)V
    .locals 2

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p1

    const-string v0, "RFC2253"

    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;->extractCN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lorg/apache/hc/client5/http/utils/DnsUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/hc/client5/http/utils/DnsUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;->matchIdentityStrict(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Certificate for <"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "> doesn\'t match common name of the certificate subject: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string p2, "Certificate subject for <"

    const-string v0, "> doesn\'t contain a common name and does not have alternative names"

    invoke-static {p2, p0, v0}, LB/f;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static matchDNSName(Ljava/lang/String;Ljava/util/List;Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/hc/client5/http/ssl/SubjectName;",
            ">;",
            "Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;",
            ")V"
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/hc/client5/http/utils/DnsUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/hc/client5/http/ssl/SubjectName;

    invoke-virtual {v2}, Lorg/apache/hc/client5/http/ssl/SubjectName;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lorg/apache/hc/client5/http/ssl/SubjectName;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/hc/client5/http/utils/DnsUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p2}, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;->matchIdentityStrict(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Certificate for <"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "> doesn\'t match any of the subject alternative names: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static matchDomainRoot(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v1, p1

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x2e

    if-ne p0, p1, :cond_2

    :cond_1
    return v3

    :cond_2
    return v0
.end method

.method public static matchIPAddress(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/hc/client5/http/ssl/SubjectName;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/hc/client5/http/ssl/SubjectName;

    invoke-virtual {v1}, Lorg/apache/hc/client5/http/ssl/SubjectName;->getType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lorg/apache/hc/client5/http/ssl/SubjectName;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Certificate for <"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "> doesn\'t match any of the subject alternative names: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static matchIPv6Address(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/hc/client5/http/ssl/SubjectName;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;->normaliseAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/hc/client5/http/ssl/SubjectName;

    invoke-virtual {v2}, Lorg/apache/hc/client5/http/ssl/SubjectName;->getType()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lorg/apache/hc/client5/http/ssl/SubjectName;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;->normaliseAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Certificate for <"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "> doesn\'t match any of the subject alternative names: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static matchIdentity(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v0, v1}, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;->matchIdentity(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;Lorg/apache/hc/client5/http/psl/DomainType;Z)Z

    move-result p0

    return p0
.end method

.method public static matchIdentity(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;->matchIdentity(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;Lorg/apache/hc/client5/http/psl/DomainType;Z)Z

    move-result p0

    return p0
.end method

.method public static matchIdentity(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;Lorg/apache/hc/client5/http/psl/DomainType;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;->matchIdentity(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;Lorg/apache/hc/client5/http/psl/DomainType;Z)Z

    move-result p0

    return p0
.end method

.method private static matchIdentity(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;Lorg/apache/hc/client5/http/psl/DomainType;Z)Z
    .locals 3

    const-string v0, "."

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, p1, p3}, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;->getDomainRoot(Ljava/lang/String;Lorg/apache/hc/client5/http/psl/DomainType;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;->matchDomainRoot(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    return v1

    :cond_0
    const/16 p2, 0x2a

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_4

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    const/4 v2, 0x1

    add-int/2addr p2, v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    return v1

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p3, p1

    invoke-virtual {p0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_3
    return v2

    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static matchIdentityStrict(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v0, v1}, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;->matchIdentity(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;Lorg/apache/hc/client5/http/psl/DomainType;Z)Z

    move-result p0

    return p0
.end method

.method public static matchIdentityStrict(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;->matchIdentity(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;Lorg/apache/hc/client5/http/psl/DomainType;Z)Z

    move-result p0

    return p0
.end method

.method public static matchIdentityStrict(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;Lorg/apache/hc/client5/http/psl/DomainType;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;->matchIdentity(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;Lorg/apache/hc/client5/http/psl/DomainType;Z)Z

    move-result p0

    return p0
.end method

.method public static normaliseAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .locals 3

    invoke-static {p1}, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;->determineHostFormat(Ljava/lang/String;)Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier$HostNameType;

    move-result-object v0

    sget-object v1, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier$1;->$SwitchMap$org$apache$hc$client5$http$ssl$DefaultHostnameVerifier$HostNameType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x7

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-static {p2, v1}, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;->publicSuffixMatcher:Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;

    invoke-static {p1, p2, v0}, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;->matchCN(Ljava/lang/String;Ljava/security/cert/X509Certificate;Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;)V

    return-void

    :cond_0
    iget-object p2, p0, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;->publicSuffixMatcher:Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;

    invoke-static {p1, v0, p2}, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;->matchDNSName(Ljava/lang/String;Ljava/util/List;Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;)V

    return-void

    :cond_1
    invoke-static {p2, v2}, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;->matchIPv6Address(Ljava/lang/String;Ljava/util/List;)V

    return-void

    :cond_2
    invoke-static {p2, v2}, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;->matchIPAddress(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object p2

    aget-object p2, p2, v0

    check-cast p2, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    sget-object p2, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;->LOG:LO5/a;

    invoke-interface {p2}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, p1}, LO5/a;->s(Ljava/lang/String;Ljavax/net/ssl/SSLException;)V

    :cond_0
    return v0
.end method
