.class public Lorg/codeaurora/ims/ImsConfigImpl;
.super Lcom/android/ims/internal/IImsConfig$Stub;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;,
        Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;,
        Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;,
        Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;,
        Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;,
        Lorg/codeaurora/ims/ImsConfigImpl$UserConfig;,
        Lorg/codeaurora/ims/ImsConfigImpl$StringValue;,
        Lorg/codeaurora/ims/ImsConfigImpl$StringConfigRequestArgument;,
        Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;,
        Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;,
        Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;,
        Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;,
        Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;,
        Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;,
        Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;,
        Lorg/codeaurora/ims/ImsConfigImpl$IntValue;,
        Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;,
        Lorg/codeaurora/ims/ImsConfigImpl$GetResponse;,
        Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;,
        Lorg/codeaurora/ims/ImsConfigImpl$Config;,
        Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;,
        Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DISABLED:B = 0x0t

.field private static final ENABLED:B = 0x1t

.field private static final EVENT_GET_FEATURE_VALUE:I = 0x1

.field private static final EVENT_GET_INT_VALUE_ASYNC:I = 0x9

.field private static final EVENT_GET_INT_VALUE_SYNC:I = 0x5

.field private static final EVENT_GET_STRING_VALUE_SYNC:I = 0x6

.field private static final EVENT_QUERY_VT_CALL_QUALITY:I = 0xc

.field private static final EVENT_RADIO_ON:I = 0xa

.field private static final EVENT_SET_FEATURE_VALUE:I = 0x2

.field private static final EVENT_SET_PROV_INT_VALUE_SYNC:I = 0x7

.field private static final EVENT_SET_PROV_STRING_VALUE_SYNC:I = 0x8

.field private static final EVENT_SET_SRV_STATUS_DONE:I = 0x3

.field private static final EVENT_SET_VT_CALL_QUALITY:I = 0xb

.field private static final HEADER_SIZE:I = 0x8

.field private static final INT_SIZE:I = 0x4

.field private static final MAX_SIZE:I = 0x100

.field private static final OEM_RIL_REQUEST_GET_IMS_CLIENT_PROV_CONFIG:I = 0x5003a

.field private static final OEM_RIL_REQUEST_GET_IMS_PRESENCE_CONFIG:I = 0x50033

.field private static final OEM_RIL_REQUEST_GET_IMS_SIP_CONFIG:I = 0x50023

.field private static final OEM_RIL_REQUEST_GET_IMS_SMS_CONFIG:I = 0x50025

.field private static final OEM_RIL_REQUEST_GET_IMS_USER_CONFIG:I = 0x50027

.field private static final OEM_RIL_REQUEST_GET_IMS_VOIP_CONFIG:I = 0x50031

.field private static final OEM_RIL_REQUEST_GET_T_CANCELLATION:I = 0x50039

.field private static final OEM_RIL_REQUEST_GET_T_DELAY:I = 0x50037

.field private static final OEM_RIL_REQUEST_GET_VOLTE_MODE:I = 0x50035

.field private static final OEM_RIL_REQUEST_SET_IMS_CLIENT_PROV_CONFIG:I = 0x5003b

.field private static final OEM_RIL_REQUEST_SET_IMS_PRESENCE_CONFIG:I = 0x50032

.field private static final OEM_RIL_REQUEST_SET_IMS_SIP_CONFIG:I = 0x50024

.field private static final OEM_RIL_REQUEST_SET_IMS_SMS_CONFIG:I = 0x50026

.field private static final OEM_RIL_REQUEST_SET_IMS_USER_CONFIG:I = 0x50028

.field private static final OEM_RIL_REQUEST_SET_IMS_VOIP_CONFIG:I = 0x50030

.field private static final OEM_RIL_REQUEST_SET_T_CANCELLATION:I = 0x50038

.field private static final OEM_RIL_REQUEST_SET_T_DELAY:I = 0x50036

.field private static final OEM_RIL_REQUEST_SET_VOLTE_MODE:I = 0x50034

.field private static final RESPONSE_BUFFER_SIZE:I = 0x800

.field private static final TAG:Ljava/lang/String; = "ImsConfigImpl"

.field private static final WFC_CELLULAR_PREFERRED:I = 0x3

.field private static final WFC_ROAMING_DISABLED:I = 0x2

.field private static final WFC_ROAMING_ENABLED:I = 0x1

.field private static final WFC_ROAMING_NOT_SUPPORTED:I = 0x0

.field private static final WFC_STATUS_OFF:I = 0x2

.field private static final WFC_STATUS_ON:I = 0x1

.field private static final WFC_STATUS_UNSUPPORTED:I = 0x0

.field private static final WFC_WLAN_ONLY:I = 0x2

.field private static final WFC_WLAN_PREFERRED:I = 0x1


# instance fields
.field private final MODIFY_PHONE_STATE:Ljava/lang/String;

.field private final READ_PHONE_STATE:Ljava/lang/String;

.field private final READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;

.field private mITelephony:Lcom/android/internal/telephony/ITelephony;

.field private mImsIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsProvisioned:Z

.field private mMcc:I

.field private mMnc:I

.field private mRegisterForOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 4

    .line 1027
    invoke-direct {p0}, Lcom/android/ims/internal/IImsConfig$Stub;-><init>()V

    .line 73
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->MODIFY_PHONE_STATE:Ljava/lang/String;

    .line 74
    const-string v0, "android.permission.READ_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->READ_PHONE_STATE:Ljava/lang/String;

    .line 75
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 79
    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 80
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$1;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsConfigImpl$1;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 93
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsProvisioned:Z

    .line 96
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mRegisterForOn:Z

    .line 1028
    const-string v1, "ImsConfigImpl"

    const-string v2, "ImsConfigImpl Creates"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "ImsConfigServiceHandler"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1030
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 1031
    new-instance v3, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v3, p0, v2}, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/Looper;)V

    iput-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;

    .line 1032
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    .line 1033
    iput-object p2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 1034
    const-string p1, "phone"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object p1

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 1035
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 1036
    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1037
    iget-object p2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1038
    iget-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 1039
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mcc = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mnc = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    iget p2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz p2, :cond_0

    iget p2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz p2, :cond_0

    .line 1041
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->syncInitFeatureValueAtPowerUpOrMccMncChanged(Landroid/content/res/Configuration;)V

    .line 1042
    iget p2, p1, Landroid/content/res/Configuration;->mcc:I

    iput p2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mMcc:I

    .line 1043
    iget p1, p1, Landroid/content/res/Configuration;->mnc:I

    iput p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mMnc:I

    .line 1045
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/codeaurora/ims/ImsConfigImpl;)I
    .locals 0

    .line 26
    iget p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mMcc:I

    return p0
.end method

.method static synthetic access$100(Lorg/codeaurora/ims/ImsConfigImpl;)I
    .locals 0

    .line 26
    iget p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mMnc:I

    return p0
.end method

.method static synthetic access$1002(Lorg/codeaurora/ims/ImsConfigImpl;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsProvisioned:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/codeaurora/ims/ImsConfigImpl;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->getProvisionedValueAsync(I)V

    return-void
.end method

.method static synthetic access$1200(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->getImsConfigListener(Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lorg/codeaurora/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->onSetVideoCallQualityDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/codeaurora/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->onGetVideoCallQualityDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/content/res/Configuration;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->syncInitFeatureValueAtPowerUpOrMccMncChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic access$300(Lorg/codeaurora/ims/ImsConfigImpl;Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->handleGetFeatureValue(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V

    return-void
.end method

.method static synthetic access$400(Lorg/codeaurora/ims/ImsConfigImpl;Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->handleSetFeatureValue(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V

    return-void
.end method

.method static synthetic access$500(Lorg/codeaurora/ims/ImsConfigImpl;Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->callBackSetFeatureListener(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;I)V

    return-void
.end method

.method static synthetic access$600(Lorg/codeaurora/ims/ImsConfigImpl;I)I
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->handleGetIntValue(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lorg/codeaurora/ims/ImsConfigImpl;I)Ljava/lang/String;
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->handleGetStringValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lorg/codeaurora/ims/ImsConfigImpl;II)I
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->handleSetProvisionedIntValue(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lorg/codeaurora/ims/ImsConfigImpl;ILjava/lang/String;)I
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->handleSetProvisionedStringValue(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method private addOemRilHookHeader(Ljava/nio/ByteBuffer;II)V
    .locals 1

    .line 2135
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2136
    const/high16 v0, 0xff0000

    and-int/2addr v0, p2

    shr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2137
    const v0, 0xff00

    and-int/2addr v0, p2

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2138
    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2139
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2140
    return-void
.end method

.method private bytesToHexString([B)Ljava/lang/String;
    .locals 4

    .line 2123
    if-nez p1, :cond_0

    .line 2124
    const/4 p1, 0x0

    return-object p1

    .line 2126
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2127
    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 2128
    aget-byte v2, p1, v1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2129
    aget-byte v2, p1, v1

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2131
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private callBackGetFeatureListener(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;I)V
    .locals 4

    .line 1435
    const-string v0, "ImsConfigImpl"

    if-eqz p1, :cond_0

    iget-object v1, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->listener:Lcom/android/ims/ImsConfigListener;

    if-eqz v1, :cond_0

    .line 1437
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callBackGetFeatureListener, feature = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->feature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " network = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->network:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    iget-object v1, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->listener:Lcom/android/ims/ImsConfigListener;

    iget v2, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->feature:I

    iget v3, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->network:I

    iget p1, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->value:I

    invoke-interface {v1, v2, v3, p1, p2}, Lcom/android/ims/ImsConfigListener;->onGetFeatureResponse(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1441
    :catch_0
    move-exception p1

    goto :goto_0

    .line 1439
    :catch_1
    move-exception p1

    goto :goto_1

    .line 1442
    :goto_0
    const-string p2, "onGetFeatureResponse, exception:"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1440
    :goto_1
    const-string p1, "onGetFeatureResponse, remote exception"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    :cond_0
    :goto_2
    return-void
.end method

.method private callBackSetFeatureListener(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;I)V
    .locals 5

    .line 1488
    const-string v0, "ImsConfigImpl"

    if-eqz p1, :cond_0

    iget-object v1, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->listener:Lcom/android/ims/ImsConfigListener;

    if-eqz v1, :cond_0

    .line 1490
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetFeatureResponse, feature = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->feature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " arg.network = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->network:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " arg.value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    iget-object v1, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->listener:Lcom/android/ims/ImsConfigListener;

    iget v2, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->feature:I

    iget v3, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->network:I

    iget v4, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->value:I

    invoke-interface {v1, v2, v3, v4, p2}, Lcom/android/ims/ImsConfigListener;->onSetFeatureResponse(IIII)V

    .line 1492
    if-nez p2, :cond_0

    .line 1493
    new-instance p2, Landroid/content/Intent;

    const-string v1, "com.android.intent.action.IMS_FEATURE_CHANGED"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1494
    const-string v1, "item"

    iget v2, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->feature:I

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1495
    const-string v1, "value"

    iget p1, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->value:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1496
    iget-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 1497
    iget-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1502
    :catch_0
    move-exception p1

    goto :goto_0

    .line 1500
    :catch_1
    move-exception p1

    goto :goto_1

    .line 1503
    :goto_0
    const-string p2, "onSetFeatureResponse, exception:"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1501
    :goto_1
    const-string p1, "onSetFeatureResponse, remote exception"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    :cond_0
    :goto_2
    return-void
.end method

.method private createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;
    .locals 1

    .line 2117
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 2118
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2119
    return-object p1
.end method

.method private getAMRModeSet()Ljava/lang/String;
    .locals 6

    .line 1802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1803
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getAMRModeSetb()B

    move-result v1

    .line 1804
    nop

    .line 1805
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x8

    if-ge v2, v4, :cond_2

    .line 1806
    const/4 v4, 0x1

    shl-int v5, v4, v2

    and-int/2addr v5, v1

    if-eqz v5, :cond_1

    .line 1807
    if-eqz v3, :cond_0

    .line 1808
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1810
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1811
    move v3, v4

    .line 1805
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1815
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAMRModeSetb()B
    .locals 2

    .line 1797
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50031

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;

    .line 1798
    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_mode:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->getValue()B

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getAMRWBModeSet()Ljava/lang/String;
    .locals 6

    .line 1847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1848
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getAMRWBModeSets()S

    move-result v1

    .line 1849
    nop

    .line 1850
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x9

    if-ge v2, v4, :cond_2

    .line 1851
    const/4 v4, 0x1

    shl-int v5, v4, v2

    and-int/2addr v5, v1

    if-eqz v5, :cond_1

    .line 1852
    if-eqz v3, :cond_0

    .line 1853
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1855
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1856
    move v3, v4

    .line 1850
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1860
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAMRWBModeSets()S
    .locals 2

    .line 1842
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50031

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;

    .line 1843
    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_mode:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->getValue()S

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getAvailabilityCacheExpiration()I
    .locals 2

    .line 1713
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50033

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    .line 1714
    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->availability_cache_expiration:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getCancellationTimer()I
    .locals 5

    .line 1910
    const v0, 0x50039

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->sendMessage(I)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1911
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v2, 0x0

    const-string v3, "getTimerCancellation: "

    const-string v4, "ImsConfigImpl"

    if-eqz v1, :cond_0

    .line 1912
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    return v2

    .line 1914
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 1915
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    .line 1916
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1917
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1918
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 1919
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    return v0

    .line 1922
    :cond_1
    const-string v0, "getTimerCancellation gets null response from RIL"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    return v2
.end method

.method private getCapabPollListSubExp()I
    .locals 2

    .line 1761
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50033

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    .line 1762
    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_list_subscription_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getCapabilitiesCacheExpiration()I
    .locals 2

    .line 1701
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50033

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    .line 1702
    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capabilites_cache_expiration:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getCapabilitiesPollInterval()I
    .locals 2

    .line 1725
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50033

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    .line 1726
    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_interval:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getCapabilityDiscoveryEnabled()I
    .locals 3

    .line 1677
    nop

    .line 1678
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50033

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    .line 1679
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_discovery_enable_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->getValue()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1682
    :cond_0
    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_discovery_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->getValue()B

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 1683
    goto :goto_0

    .line 1682
    :cond_1
    move v1, v2

    .line 1685
    :goto_0
    return v1

    .line 1680
    :cond_2
    :goto_1
    return v1
.end method

.method private getDomainName()Ljava/lang/String;
    .locals 2

    .line 1566
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$UserConfig;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$UserConfig;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50027

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$UserConfig;

    .line 1567
    if-eqz v0, :cond_1

    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$UserConfig;->domain_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->getValue()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1570
    :cond_0
    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$UserConfig;->domain:Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1568
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getEABEnabled()I
    .locals 3

    .line 2023
    nop

    .line 2024
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x5003a

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    .line 2025
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_presence_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->getValue()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 2028
    :cond_0
    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_presence:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->getValue()B

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 2029
    goto :goto_0

    .line 2028
    :cond_1
    move v1, v2

    .line 2031
    :goto_0
    return v1

    .line 2026
    :cond_2
    :goto_1
    return v1
.end method

.method private getFeatureConfigValue(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V
    .locals 2

    .line 1417
    nop

    .line 1418
    iget v0, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->network:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    .line 1419
    const/4 v0, 0x3

    goto :goto_0

    .line 1418
    :cond_0
    const/4 v0, 0x2

    .line 1421
    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->callBackGetFeatureListener(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;I)V

    .line 1422
    return-void
.end method

.method private getGZIPFlag()I
    .locals 3

    .line 1773
    nop

    .line 1774
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50033

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    .line 1775
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->gzip_enabled_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->getValue()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1778
    :cond_0
    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->gzip_enabled:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->getValue()B

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 1779
    goto :goto_0

    .line 1778
    :cond_1
    move v1, v2

    .line 1781
    :goto_0
    return v1

    .line 1776
    :cond_2
    :goto_1
    return v1
.end method

.method private getImsConfigListener(Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;
    .locals 2

    .line 1239
    const-string v0, "ImsConfigImpl"

    if-nez p1, :cond_0

    .line 1240
    const-string p1, "AsyncResult is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1241
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/ims/ImsConfigListener;

    if-eqz v1, :cond_1

    .line 1242
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/ims/ImsConfigListener;

    return-object p1

    .line 1244
    :cond_1
    :goto_0
    const-string p1, "getImsConfigListener returns null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    const/4 p1, 0x0

    return-object p1
.end method

.method private getLVCEnabled()I
    .locals 3

    .line 1999
    nop

    .line 2000
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x5003a

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    .line 2001
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_vt_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->getValue()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 2004
    :cond_0
    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_vt:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->getValue()B

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 2005
    goto :goto_0

    .line 2004
    :cond_1
    move v1, v2

    .line 2007
    :goto_0
    return v1

    .line 2002
    :cond_2
    :goto_1
    return v1
.end method

.method private getMaxNumentriesInRcl()I
    .locals 2

    .line 1749
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50033

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    .line 1750
    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->max_subcription_list_entries:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getOperationStatus(Z)I
    .locals 0

    .line 1232
    if-eqz p1, :cond_0

    .line 1233
    const/4 p1, 0x0

    return p1

    .line 1235
    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private getProvisionedValueAsync(I)V
    .locals 2

    .line 1131
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;-><init>(II)V

    const/16 p1, 0x9

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequestAsync(ILjava/lang/Object;)V

    .line 1132
    return-void
.end method

.method private getPublishExtendedTimer()I
    .locals 2

    .line 1665
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50033

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    .line 1666
    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_extended_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getPublishTimer()I
    .locals 2

    .line 1653
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50033

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    .line 1654
    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getSIPT1Timer()I
    .locals 2

    .line 1581
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50023

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;

    .line 1582
    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t1_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getSIPT2Timer()I
    .locals 2

    .line 1593
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50023

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;

    .line 1594
    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t2_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getSIPTfTimer()I
    .locals 2

    .line 1605
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50023

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;

    .line 1606
    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->tf_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getSMSFormat()I
    .locals 2

    .line 1617
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50025

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;

    .line 1618
    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_format:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getSMSOverIP()I
    .locals 3

    .line 1629
    nop

    .line 1630
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50025

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;

    .line 1631
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_over_ip_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->getValue()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1634
    :cond_0
    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_over_ip:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->getValue()B

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 1635
    goto :goto_0

    .line 1634
    :cond_1
    move v1, v2

    .line 1637
    :goto_0
    return v1

    .line 1632
    :cond_2
    :goto_1
    return v1
.end method

.method private getSipSessionTimer()I
    .locals 2

    .line 1886
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50031

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;

    .line 1887
    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->session_duration:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->getValue()S

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getSourceThrottlePublish()I
    .locals 2

    .line 1737
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50033

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    .line 1738
    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->minimum_publish_interval:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getTDelay()I
    .locals 5

    .line 1937
    const v0, 0x50037

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->sendMessage(I)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1938
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v2, 0x0

    const-string v3, "getTDelay: "

    const-string v4, "ImsConfigImpl"

    if-eqz v1, :cond_0

    .line 1939
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    return v2

    .line 1941
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 1942
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    .line 1943
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1944
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1945
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 1946
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    return v0

    .line 1949
    :cond_1
    const-string v0, "getTDelay gets null response from RIL"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    return v2
.end method

.method private getVLTEnabled()I
    .locals 3

    .line 1975
    nop

    .line 1976
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x5003a

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    .line 1977
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_volte_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->getValue()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1980
    :cond_0
    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_volte:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->getValue()B

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 1981
    goto :goto_0

    .line 1980
    :cond_1
    move v1, v2

    .line 1983
    :goto_0
    return v1

    .line 1978
    :cond_2
    :goto_1
    return v1
.end method

.method private getVoipMinSessionExpires()I
    .locals 2

    .line 1898
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50031

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;

    .line 1899
    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->min_session_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->getValue()S

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getVoipSilentRedialEnabled()I
    .locals 2

    .line 1964
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50031

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;->silent_redial_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->getValue()B

    move-result v0

    return v0
.end method

.method private getWifiCallEnabled()I
    .locals 2

    .line 2047
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x5003a

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    .line 2048
    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->getValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2049
    return v1

    .line 2051
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getWifiCallPreference()I
    .locals 3

    .line 2068
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x5003a

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    .line 2069
    const/4 v1, 0x2

    if-eqz v0, :cond_3

    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_preference_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->getValue()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 2072
    :cond_0
    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_preference:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v0

    .line 2073
    if-ne v0, v1, :cond_1

    .line 2074
    const/4 v0, 0x0

    return v0

    .line 2076
    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 2077
    const/4 v0, 0x1

    return v0

    .line 2079
    :cond_2
    return v1

    .line 2070
    :cond_3
    :goto_0
    return v1
.end method

.method private getWifiCallRoaming()I
    .locals 2

    .line 2096
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x5003a

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    .line 2097
    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_roaming_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->getValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_roaming:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2098
    return v1

    .line 2100
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getWifiFeatureConfigValue(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V
    .locals 2

    .line 1425
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getWifiCallEnabled()I

    move-result v0

    .line 1426
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1427
    iput v1, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->value:I

    goto :goto_0

    .line 1429
    :cond_0
    const/4 v1, 0x0

    iput v1, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->value:I

    .line 1431
    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->callBackGetFeatureListener(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;I)V

    .line 1432
    return-void
.end method

.method private handleGetFeatureValue(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V
    .locals 3

    .line 1157
    if-eqz p1, :cond_2

    .line 1158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleGetFeatureValue, feature = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->feature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    iget v0, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->feature:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    .line 1171
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->callBackGetFeatureListener(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;I)V

    .line 1172
    return-void

    .line 1168
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->getWifiFeatureConfigValue(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V

    .line 1169
    return-void

    .line 1163
    :cond_1
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->getFeatureConfigValue(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V

    .line 1164
    return-void

    .line 1175
    :cond_2
    return-void
.end method

.method private handleGetIntValue(I)I
    .locals 3

    .line 1265
    nop

    .line 1266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleGetIntValue, item = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1325
    :pswitch_0
    return v0

    .line 1323
    :pswitch_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getWifiCallPreference()I

    move-result p1

    return p1

    .line 1321
    :pswitch_2
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getWifiCallRoaming()I

    move-result p1

    return p1

    .line 1319
    :pswitch_3
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getEABEnabled()I

    move-result p1

    return p1

    .line 1317
    :pswitch_4
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getGZIPFlag()I

    move-result p1

    return p1

    .line 1315
    :pswitch_5
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getCapabPollListSubExp()I

    move-result p1

    return p1

    .line 1313
    :pswitch_6
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getMaxNumentriesInRcl()I

    move-result p1

    return p1

    .line 1311
    :pswitch_7
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getSourceThrottlePublish()I

    move-result p1

    return p1

    .line 1309
    :pswitch_8
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getCapabilitiesPollInterval()I

    move-result p1

    return p1

    .line 1307
    :pswitch_9
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getAvailabilityCacheExpiration()I

    move-result p1

    return p1

    .line 1305
    :pswitch_a
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getCapabilitiesCacheExpiration()I

    move-result p1

    return p1

    .line 1303
    :pswitch_b
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getCapabilityDiscoveryEnabled()I

    move-result p1

    return p1

    .line 1301
    :pswitch_c
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getPublishExtendedTimer()I

    move-result p1

    return p1

    .line 1299
    :pswitch_d
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getPublishTimer()I

    move-result p1

    return p1

    .line 1297
    :pswitch_e
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getSMSOverIP()I

    move-result p1

    return p1

    .line 1295
    :pswitch_f
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getSMSFormat()I

    move-result p1

    return p1

    .line 1293
    :pswitch_10
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getLVCEnabled()I

    move-result p1

    return p1

    .line 1285
    :pswitch_11
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getVLTEnabled()I

    move-result p1

    .line 1286
    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    .line 1287
    goto :goto_0

    .line 1286
    :cond_0
    move v0, v2

    .line 1289
    :goto_0
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsProvisioned:Z

    .line 1290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGetIntValue, getVLTEnabled() mIsProvisioned= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsProvisioned:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    return p1

    .line 1283
    :pswitch_12
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getSIPTfTimer()I

    move-result p1

    return p1

    .line 1281
    :pswitch_13
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getSIPT2Timer()I

    move-result p1

    return p1

    .line 1279
    :pswitch_14
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getSIPT1Timer()I

    move-result p1

    return p1

    .line 1277
    :pswitch_15
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getVoipSilentRedialEnabled()I

    move-result p1

    return p1

    .line 1275
    :pswitch_16
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getTDelay()I

    move-result p1

    return p1

    .line 1273
    :pswitch_17
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getCancellationTimer()I

    move-result p1

    return p1

    .line 1271
    :pswitch_18
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getVoipMinSessionExpires()I

    move-result p1

    return p1

    .line 1269
    :pswitch_19
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getSipSessionTimer()I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private handleGetStringValue(I)Ljava/lang/String;
    .locals 2

    .line 1330
    nop

    .line 1331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleGetStringValue, item = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    .line 1340
    const-string p1, "Unknown"

    return-object p1

    .line 1338
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getDomainName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1336
    :cond_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getAMRWBModeSet()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1334
    :cond_2
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getAMRModeSet()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private handleSetFeatureValue(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V
    .locals 3

    .line 1178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSetFeatureValue, feature = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->feature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    nop

    .line 1180
    iget v0, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->feature:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    .line 1192
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->callBackSetFeatureListener(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;I)V

    .line 1193
    return-void

    .line 1189
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->setWifiFeatureConfigValue(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V

    .line 1190
    return-void

    .line 1184
    :cond_1
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->setFeatureConfigValue(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V

    .line 1185
    return-void
.end method

.method private handleSetProvisionedIntValue(II)I
    .locals 2

    .line 1345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSetProvisionedIntValue, item = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    packed-switch p1, :pswitch_data_0

    .line 1398
    :pswitch_0
    const/4 p1, -0x1

    return p1

    .line 1396
    :pswitch_1
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setWifiCallPreference(I)I

    move-result p1

    return p1

    .line 1394
    :pswitch_2
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setWifiCallRoaming(I)I

    move-result p1

    return p1

    .line 1392
    :pswitch_3
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setEABEnabled(I)I

    move-result p1

    return p1

    .line 1390
    :pswitch_4
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setGZIPFlag(I)I

    move-result p1

    return p1

    .line 1388
    :pswitch_5
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setCapabPollListSubExp(I)I

    move-result p1

    return p1

    .line 1386
    :pswitch_6
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setMaxNumentriesInRcl(I)I

    move-result p1

    return p1

    .line 1384
    :pswitch_7
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setSourceThrottlePublish(I)I

    move-result p1

    return p1

    .line 1382
    :pswitch_8
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setCapabilitiesPollInterval(I)I

    move-result p1

    return p1

    .line 1380
    :pswitch_9
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setAvailabilityCacheExpiration(I)I

    move-result p1

    return p1

    .line 1378
    :pswitch_a
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setCapabilitiesCacheExpiration(I)I

    move-result p1

    return p1

    .line 1376
    :pswitch_b
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setCapabilityDiscoveryEnabled(I)I

    move-result p1

    return p1

    .line 1374
    :pswitch_c
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setPublishExtendedTimer(I)I

    move-result p1

    return p1

    .line 1372
    :pswitch_d
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setPublishTimer(I)I

    move-result p1

    return p1

    .line 1370
    :pswitch_e
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setSMSOverIP(I)I

    move-result p1

    return p1

    .line 1368
    :pswitch_f
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setSMSFormat(I)I

    move-result p1

    return p1

    .line 1366
    :pswitch_10
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setLVCEnabled(I)I

    move-result p1

    return p1

    .line 1364
    :pswitch_11
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setVLTEnabled(I)I

    move-result p1

    return p1

    .line 1362
    :pswitch_12
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setSIPTfTimer(I)I

    move-result p1

    return p1

    .line 1360
    :pswitch_13
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setSIPT2Timer(I)I

    move-result p1

    return p1

    .line 1358
    :pswitch_14
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setSIPT1Timer(I)I

    move-result p1

    return p1

    .line 1356
    :pswitch_15
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setVoipSilentRedialEnabled(I)I

    move-result p1

    return p1

    .line 1354
    :pswitch_16
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setTDelay(I)I

    move-result p1

    return p1

    .line 1352
    :pswitch_17
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setCancellationTimer(I)I

    move-result p1

    return p1

    .line 1350
    :pswitch_18
    int-to-short p1, p2

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->setVoipMinSessionExpires(S)I

    move-result p1

    return p1

    .line 1348
    :pswitch_19
    int-to-short p1, p2

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->setSipSessionTimer(S)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private handleSetProvisionedStringValue(ILjava/lang/String;)I
    .locals 2

    .line 1403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSetProvisionedStringValue, item = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " String="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    .line 1412
    const/4 p1, -0x1

    return p1

    .line 1410
    :cond_0
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setDomainName(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 1408
    :cond_1
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setAMRWBModeSet(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 1406
    :cond_2
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setAMRModeSet(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private onGetVideoCallQualityDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 3

    .line 1199
    const-string v0, "ImsConfigImpl"

    if-eqz p1, :cond_2

    .line 1202
    :try_start_0
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->getOperationStatus(Z)I

    move-result v1

    .line 1203
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 1204
    const/4 p2, -0x1

    goto :goto_1

    .line 1206
    :cond_1
    iget-object p2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1208
    :goto_1
    invoke-interface {p1, v1, p2}, Lcom/android/ims/ImsConfigListener;->onGetVideoQuality(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1209
    return-void

    .line 1210
    :catchall_0
    move-exception p1

    .line 1211
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetVideoCallQualityDone "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    return-void

    .line 1215
    :cond_2
    const-string p1, "onGetVideoCallQualityDone listener is not valid !!!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    return-void
.end method

.method private onSetVideoCallQualityDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 2

    .line 1219
    const-string v0, "ImsConfigImpl"

    if-eqz p1, :cond_1

    .line 1221
    :try_start_0
    iget-object p2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->getOperationStatus(Z)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/android/ims/ImsConfigListener;->onSetVideoQuality(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1222
    return-void

    .line 1223
    :catchall_0
    move-exception p1

    .line 1224
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetVideoCallQualityDone "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    return-void

    .line 1228
    :cond_1
    const-string p1, "onSetVideoCallQualityDone listener is not valid !!!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    return-void
.end method

.method private sendMessage(I)Landroid/os/AsyncResult;
    .locals 3

    .line 2143
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 2144
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->addOemRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2145
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->sendMessage(I[B)Landroid/os/AsyncResult;

    move-result-object p1

    return-object p1
.end method

.method private sendMessage(II)Landroid/os/AsyncResult;
    .locals 3

    .line 2157
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 2158
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2159
    const/4 v2, 0x4

    invoke-direct {p0, v1, p1, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->addOemRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2160
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2161
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object p1

    return-object p1
.end method

.method private sendMessage(IS)Landroid/os/AsyncResult;
    .locals 3

    .line 2149
    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 2150
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2151
    const/4 v2, 0x2

    invoke-direct {p0, v1, p1, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->addOemRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2152
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2153
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object p1

    return-object p1
.end method

.method private sendMessage(I[B)Landroid/os/AsyncResult;
    .locals 3

    .line 2165
    array-length v0, p2

    add-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 2166
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2167
    array-length v2, p2

    invoke-direct {p0, v1, p1, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->addOemRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2168
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2169
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object p1

    return-object p1
.end method

.method private sendRequest(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1139
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1140
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Looper.myLooper() == this.mContext.getMainLooper()cammand ="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ImsConfigImpl"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1143
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;

    invoke-direct {v0, p2}, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;-><init>(Ljava/lang/Object;)V

    .line 1144
    iget-object p2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;

    invoke-virtual {p2, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1145
    monitor-enter v0

    .line 1146
    :goto_0
    :try_start_0
    iget-object p1, v0, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 1148
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1150
    :goto_1
    goto :goto_0

    .line 1149
    :catch_0
    move-exception p1

    goto :goto_1

    .line 1152
    :cond_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1153
    iget-object p1, v0, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;->result:Ljava/lang/Object;

    return-object p1

    .line 1152
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private sendRequestAsync(ILjava/lang/Object;)V
    .locals 2

    .line 1135
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;

    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;

    invoke-direct {v1, p2}, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1136
    return-void
.end method

.method private sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;
    .locals 7

    .line 2173
    const-string v0, "ITelephony.sendOemRilRequestRaw returns "

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2174
    new-instance p2, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Cannot get Telephony Service"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p1, v2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object p2

    .line 2177
    :cond_0
    const/16 v1, 0x800

    new-array v1, v1, [B

    .line 2178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendQcRilOemHookMsg: Outgoing Data is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ImsConfigImpl"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    :try_start_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3, p2, v1}, Lcom/android/internal/telephony/ITelephony;->invokeOemRilRequestRaw([B[B)I

    move-result v3

    .line 2181
    if-ltz v3, :cond_2

    .line 2182
    nop

    .line 2183
    if-lez v3, :cond_1

    .line 2184
    new-array p2, v3, [B

    .line 2185
    const/4 v0, 0x0

    invoke-static {v1, v0, p2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response Data is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2188
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Response retVal = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v2

    .line 2190
    :goto_0
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2191
    goto :goto_1

    .line 2192
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    new-instance v1, Landroid/os/AsyncResult;

    new-instance v5, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p2, v2, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 2198
    :goto_1
    goto :goto_2

    .line 2195
    :catch_0
    move-exception p2

    .line 2196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ITelephony.sendOemRilRequestRaw met exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2197
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1, v2, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2199
    :goto_2
    return-object v0
.end method

.method private setAMRModeSet(B)I
    .locals 3

    .line 1819
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1820
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_mode_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1821
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_mode:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->setValue(B)V

    .line 1822
    const p1, 0x50030

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setAMRModeSet(Ljava/lang/String;)I
    .locals 6

    .line 1826
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1827
    nop

    .line 1828
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p1, v1

    .line 1830
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1831
    if-ltz v3, :cond_0

    const/4 v4, 0x7

    if-gt v3, v4, :cond_0

    .line 1832
    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 1836
    :cond_0
    goto :goto_1

    .line 1834
    :catch_0
    move-exception v3

    .line 1835
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAMRModeSet met exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ImsConfigImpl"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1838
    :cond_1
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->setAMRModeSet(B)I

    move-result p1

    return p1
.end method

.method private setAMRWBModeSet(Ljava/lang/String;)I
    .locals 6

    .line 1871
    nop

    .line 1872
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p1, v1

    .line 1874
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1875
    if-ltz v3, :cond_0

    const/16 v4, 0x8

    if-gt v3, v4, :cond_0

    .line 1876
    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    int-to-short v2, v2

    .line 1880
    :cond_0
    goto :goto_1

    .line 1878
    :catch_0
    move-exception v3

    .line 1879
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAMRWBModeSet met exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ImsConfigImpl"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1882
    :cond_1
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->setAMRWBModeSet(S)I

    move-result p1

    return p1
.end method

.method private setAMRWBModeSet(S)I
    .locals 3

    .line 1864
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1865
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_mode_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1866
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_mode:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->setValue(S)V

    .line 1867
    const p1, 0x50030

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setAvailabilityCacheExpiration(I)I
    .locals 3

    .line 1718
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1719
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->availability_cache_expiration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1720
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->availability_cache_expiration:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 1721
    const p1, 0x50032

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setCancellationTimer(I)I
    .locals 2

    .line 1928
    const v0, 0x50038

    invoke-direct {p0, v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->sendMessage(II)Landroid/os/AsyncResult;

    move-result-object p1

    .line 1929
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 1930
    const/4 p1, -0x1

    return p1

    .line 1932
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTimerCancellation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsConfigImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    const/4 p1, 0x0

    return p1
.end method

.method private setCapabPollListSubExp(I)I
    .locals 3

    .line 1766
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1767
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_list_subscription_expiry_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1768
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_list_subscription_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 1769
    const p1, 0x50032

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setCapabilitiesCacheExpiration(I)I
    .locals 3

    .line 1706
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1707
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capabilites_cache_expiration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1708
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capabilites_cache_expiration:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 1709
    const p1, 0x50032

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setCapabilitiesPollInterval(I)I
    .locals 3

    .line 1730
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1731
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_interval_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1732
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_interval:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 1733
    const p1, 0x50032

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setCapabilityDiscoveryEnabled(I)I
    .locals 3

    .line 1689
    nop

    .line 1690
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1691
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_discovery_enable_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1692
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_discovery_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 1693
    if-eq p1, v2, :cond_0

    .line 1694
    const/4 v2, 0x0

    .line 1696
    :cond_0
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->setValue(B)V

    .line 1697
    const p1, 0x50032

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I
    .locals 2

    .line 2222
    invoke-virtual {p2}, Lorg/codeaurora/ims/ImsConfigImpl$Config;->getSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2223
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2224
    invoke-virtual {p2, v0}, Lorg/codeaurora/ims/ImsConfigImpl$Config;->put(Ljava/nio/ByteBuffer;)V

    .line 2225
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->sendMessage(I[B)Landroid/os/AsyncResult;

    move-result-object p2

    .line 2226
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 2227
    const/4 p1, 0x0

    return p1

    .line 2229
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConfig: requestid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " returned Exception: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ImsConfigImpl"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    const/4 p1, -0x1

    return p1
.end method

.method private setDomainName(Ljava/lang/String;)I
    .locals 3

    .line 1574
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$UserConfig;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$UserConfig;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1575
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$UserConfig;->domain_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1576
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$UserConfig;->domain:Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->setValue(Ljava/lang/String;)V

    .line 1577
    const p1, 0x50028

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setEABEnabled(I)I
    .locals 3

    .line 2035
    nop

    .line 2036
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 2037
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_presence_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 2038
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_presence:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 2039
    if-eq p1, v2, :cond_0

    .line 2040
    const/4 v2, 0x0

    .line 2042
    :cond_0
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->setValue(B)V

    .line 2043
    const p1, 0x5003b

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setFeatureConfigValue(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V
    .locals 11

    .line 1454
    const/4 v0, 0x2

    const/4 v1, 0x3

    if-eqz p1, :cond_5

    iget v2, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->network:I

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    goto :goto_3

    .line 1457
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFeatureConfigValue, feature = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->feature:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " network = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->network:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->value:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsConfigImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    iget v2, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->value:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    iget v2, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->value:I

    if-nez v2, :cond_1

    goto :goto_0

    .line 1470
    :cond_1
    goto :goto_4

    .line 1459
    :cond_2
    :goto_0
    nop

    .line 1460
    iget v2, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->value:I

    const/4 v4, 0x0

    if-nez v2, :cond_3

    .line 1461
    move v8, v4

    goto :goto_1

    .line 1460
    :cond_3
    move v8, v0

    .line 1463
    :goto_1
    nop

    .line 1464
    iget v0, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->feature:I

    if-ne v0, v3, :cond_4

    .line 1465
    move v6, v1

    goto :goto_2

    .line 1464
    :cond_4
    move v6, v4

    .line 1467
    :goto_2
    const/16 v7, 0xe

    const/4 v9, 0x0

    move-object v5, p0

    move-object v10, p1

    invoke-direct/range {v5 .. v10}, Lorg/codeaurora/ims/ImsConfigImpl;->setServiceStatus(IIIILorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V

    .line 1468
    return-void

    .line 1455
    :cond_5
    :goto_3
    move v0, v1

    .line 1472
    :goto_4
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->callBackSetFeatureListener(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;I)V

    .line 1473
    return-void
.end method

.method private setGZIPFlag(I)I
    .locals 3

    .line 1785
    nop

    .line 1786
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1787
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->gzip_enabled_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1788
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->gzip_enabled:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 1789
    if-eq p1, v2, :cond_0

    .line 1790
    const/4 v2, 0x0

    .line 1792
    :cond_0
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->setValue(B)V

    .line 1793
    const p1, 0x50032

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setLVCEnabled(I)I
    .locals 3

    .line 2011
    nop

    .line 2012
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 2013
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_vt_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 2014
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_vt:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 2015
    if-eq p1, v2, :cond_0

    .line 2016
    const/4 v2, 0x0

    .line 2018
    :cond_0
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->setValue(B)V

    .line 2019
    const p1, 0x5003b

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setMaxNumentriesInRcl(I)I
    .locals 3

    .line 1754
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1755
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->max_subcription_list_entries_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1756
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->max_subcription_list_entries:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 1757
    const p1, 0x50032

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setPublishExtendedTimer(I)I
    .locals 3

    .line 1670
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1671
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_extended_expiry_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1672
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_extended_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 1673
    const p1, 0x50032

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setPublishTimer(I)I
    .locals 3

    .line 1658
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1659
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_expiry_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1660
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 1661
    const p1, 0x50032

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setSIPT1Timer(I)I
    .locals 3

    .line 1586
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1587
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t1_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1588
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t1_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 1589
    const p1, 0x50024

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setSIPT2Timer(I)I
    .locals 3

    .line 1598
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1599
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t2_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1600
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t2_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 1601
    const p1, 0x50024

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setSIPTfTimer(I)I
    .locals 3

    .line 1610
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1611
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->tf_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1612
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->tf_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 1613
    const p1, 0x50024

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setSMSFormat(I)I
    .locals 3

    .line 1622
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1623
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_format_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1624
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_format:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 1625
    const p1, 0x50026

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setSMSOverIP(I)I
    .locals 3

    .line 1641
    nop

    .line 1642
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1643
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_over_ip_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1644
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_over_ip:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 1645
    if-eq p1, v2, :cond_0

    .line 1646
    const/4 v2, 0x0

    .line 1648
    :cond_0
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->setValue(B)V

    .line 1649
    const p1, 0x50026

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setServiceStatus(IIIILorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V
    .locals 8

    .line 1448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setServiceStatus Service ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " NetworkType ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " restrictCause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p5}, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->setServiceStatus(Landroid/os/Message;IIII)V

    .line 1450
    return-void
.end method

.method private setSipSessionTimer(S)I
    .locals 3

    .line 1891
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1892
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->session_duration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1893
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->session_duration:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->setValue(S)V

    .line 1894
    const p1, 0x50030

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setSourceThrottlePublish(I)I
    .locals 3

    .line 1742
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1743
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->minimum_publish_interval_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1744
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->minimum_publish_interval:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 1745
    const p1, 0x50032

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setTDelay(I)I
    .locals 2

    .line 1955
    int-to-short p1, p1

    const v0, 0x50036

    invoke-direct {p0, v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->sendMessage(IS)Landroid/os/AsyncResult;

    move-result-object p1

    .line 1956
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 1957
    const/4 p1, -0x1

    return p1

    .line 1959
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTDelay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsConfigImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    const/4 p1, 0x0

    return p1
.end method

.method private setVLTEnabled(I)I
    .locals 3

    .line 1987
    nop

    .line 1988
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1989
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_volte_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1990
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_volte:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 1991
    if-eq p1, v2, :cond_0

    .line 1992
    const/4 v2, 0x0

    .line 1994
    :cond_0
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->setValue(B)V

    .line 1995
    const p1, 0x5003b

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setVoipMinSessionExpires(S)I
    .locals 3

    .line 1903
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1904
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->min_session_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1905
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->min_session_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->setValue(S)V

    .line 1906
    const p1, 0x50030

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setVoipSilentRedialEnabled(I)I
    .locals 3

    .line 1968
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1969
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->silent_redial_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1970
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->silent_redial_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    int-to-byte p1, p1

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->setValue(B)V

    .line 1971
    const p1, 0x50030

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setWifiCallEnabled(I)I
    .locals 3

    .line 2055
    nop

    .line 2056
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 2057
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 2058
    if-ne p1, v2, :cond_0

    .line 2059
    goto :goto_0

    .line 2060
    :cond_0
    if-nez p1, :cond_1

    .line 2061
    const/4 v2, 0x2

    goto :goto_0

    .line 2060
    :cond_1
    const/4 v2, 0x0

    .line 2063
    :goto_0
    iget-object p1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {p1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 2064
    const p1, 0x5003b

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setWifiCallPreference(I)I
    .locals 3

    .line 2083
    nop

    .line 2084
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 2085
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_preference_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 2086
    if-nez p1, :cond_0

    .line 2087
    const/4 v2, 0x2

    goto :goto_0

    .line 2088
    :cond_0
    if-ne p1, v2, :cond_1

    .line 2089
    const/4 v2, 0x3

    .line 2091
    :cond_1
    :goto_0
    iget-object p1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_preference:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {p1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 2092
    const p1, 0x5003b

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setWifiCallRoaming(I)I
    .locals 3

    .line 2104
    nop

    .line 2105
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 2106
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_roaming_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 2107
    if-ne p1, v2, :cond_0

    .line 2108
    goto :goto_0

    .line 2109
    :cond_0
    if-nez p1, :cond_1

    .line 2110
    const/4 v2, 0x2

    goto :goto_0

    .line 2109
    :cond_1
    const/4 v2, 0x0

    .line 2112
    :goto_0
    iget-object p1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_roaming:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {p1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 2113
    const p1, 0x5003b

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setWifiFeatureConfigValue(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V
    .locals 2

    .line 1476
    nop

    .line 1477
    if-eqz p1, :cond_0

    .line 1478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWifiFeatureConfigValue, feature = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->feature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " network = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->network:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    iget v0, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->feature:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1480
    iget v0, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->value:I

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setWifiCallEnabled(I)I

    .line 1481
    const/4 v0, 0x0

    goto :goto_0

    .line 1484
    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->callBackSetFeatureListener(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;I)V

    .line 1485
    return-void
.end method

.method private syncInitFeatureValueAtPowerUpOrMccMncChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 1509
    if-eqz p1, :cond_0

    .line 1510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged, mcc ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mnc ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsProvisioned:Z

    .line 1513
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->getProvisionedValueAsync(I)V

    .line 1514
    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mRegisterForOn:Z

    if-nez v2, :cond_1

    .line 1515
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1516
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mRegisterForOn:Z

    .line 1518
    :cond_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->syncVolteFeatureValue()V

    .line 1519
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->syncVideoCallFeatureValue()V

    .line 1520
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->syncWfcFeatureAndProvisionedValues()V

    .line 1521
    if-eqz p1, :cond_2

    .line 1522
    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    iput v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mMcc:I

    .line 1523
    iget p1, p1, Landroid/content/res/Configuration;->mnc:I

    iput p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mMnc:I

    .line 1525
    :cond_2
    return-void
.end method

.method private syncVideoCallFeatureValue()V
    .locals 4

    .line 1536
    nop

    .line 1537
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "volte_vt_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1538
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vt_ims_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1539
    if-nez v0, :cond_0

    .line 1540
    const/4 v2, 0x0

    .line 1542
    :cond_0
    const/16 v0, 0xd

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    .line 1543
    return-void
.end method

.method private syncVolteFeatureValue()V
    .locals 4

    .line 1529
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "volte_vt_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1530
    nop

    .line 1531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "volteAvailable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", volteUserEnabled = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsConfigImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    const/4 v1, 0x0

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    .line 1533
    return-void
.end method

.method private syncWfcFeatureAndProvisionedValues()V
    .locals 6

    .line 1547
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "wfc_ims_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1548
    nop

    .line 1549
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wfc_ims_mode"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1550
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wfc_ims_roaming_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1551
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wfcAvailable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", wfcUserEnabled = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", wfcUserMode = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", wfcUserRoaming = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    nop

    .line 1553
    nop

    .line 1555
    nop

    .line 1556
    nop

    .line 1558
    nop

    .line 1563
    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 2

    .line 1048
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1049
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mRegisterForOn:Z

    if-eqz v0, :cond_0

    .line 1050
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForOn(Landroid/os/Handler;)V

    .line 1051
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mRegisterForOn:Z

    .line 1053
    :cond_0
    return-void
.end method

.method public getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;
    .locals 5

    .line 2204
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->sendMessage(I)Landroid/os/AsyncResult;

    move-result-object v0

    .line 2205
    const-string v1, "getConfig: requestid="

    const-string v2, "ImsConfigImpl"

    if-eqz v0, :cond_2

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v3, v3, [B

    if-nez v3, :cond_0

    goto :goto_0

    .line 2208
    :cond_0
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    .line 2209
    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v3, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2210
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2211
    new-instance v3, Lorg/codeaurora/ims/ImsConfigImpl$GetResponse;

    invoke-direct {v3, p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl$GetResponse;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;Lorg/codeaurora/ims/ImsConfigImpl$Config;)V

    .line 2212
    invoke-virtual {v3, v0}, Lorg/codeaurora/ims/ImsConfigImpl$GetResponse;->populate(Ljava/nio/ByteBuffer;)V

    .line 2213
    iget-object p2, v3, Lorg/codeaurora/ims/ImsConfigImpl$GetResponse;->mHeader:Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;

    invoke-virtual {p2}, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2214
    iget-object p1, v3, Lorg/codeaurora/ims/ImsConfigImpl$GetResponse;->mConfig:Lorg/codeaurora/ims/ImsConfigImpl$Config;

    return-object p1

    .line 2216
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " return failure"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2206
    :cond_2
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " no response/error"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFeatureValue(IILcom/android/ims/ImsConfigListener;)V
    .locals 3

    .line 1106
    const-string v0, "getFeatureValue"

    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1109
    goto :goto_0

    .line 1107
    :catch_0
    move-exception v1

    .line 1108
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getFeatureValue feture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    const/4 v0, 0x1

    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2, p3}, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;-><init>(IIILcom/android/ims/ImsConfigListener;)V

    invoke-direct {p0, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequestAsync(ILjava/lang/Object;)V

    .line 1112
    return-void
.end method

.method public getProvisionedStringValue(I)Ljava/lang/String;
    .locals 3

    .line 1067
    const-string v0, "getProvisionedStringValue"

    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1070
    goto :goto_0

    .line 1068
    :catch_0
    move-exception v1

    .line 1069
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getProvisionedStringValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    const/4 v0, 0x6

    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$StringConfigRequestArgument;

    const-string v2, "Unkown"

    invoke-direct {v1, p1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$StringConfigRequestArgument;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getProvisionedValue(I)I
    .locals 3

    .line 1057
    const-string v0, "getProvisionedValue"

    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1060
    goto :goto_0

    .line 1058
    :catch_0
    move-exception v1

    .line 1059
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getProvisionedValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    const/4 v0, 0x5

    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;-><init>(II)V

    invoke-direct {p0, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getVideoQuality(Lcom/android/ims/ImsConfigListener;)V
    .locals 2

    .line 1250
    const-string p1, "getVideoQuality"

    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1253
    goto :goto_0

    .line 1251
    :catch_0
    move-exception v0

    .line 1252
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    :goto_0
    const-string v0, "ImsConfigImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    return-void
.end method

.method public getVolteProvisioned()Z
    .locals 3

    .line 1122
    const-string v0, "getVolteProvisioned"

    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1125
    goto :goto_0

    .line 1123
    :catch_0
    move-exception v1

    .line 1124
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVolteProvisioned ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsProvisioned:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsProvisioned:Z

    return v0
.end method

.method public setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    .locals 3

    .line 1115
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setFeatureValue"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getFeatureValue feture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;-><init>(IIILcom/android/ims/ImsConfigListener;)V

    const/4 p1, 0x2

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequestAsync(ILjava/lang/Object;)V

    .line 1118
    return-void
.end method

.method public setProvisionedStringValue(ILjava/lang/String;)I
    .locals 3

    .line 1092
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setProvisionedStringValue"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProvisionedStringValue item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " String="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$StringConfigRequestArgument;

    invoke-direct {v0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl$StringConfigRequestArgument;-><init>(ILjava/lang/String;)V

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1095
    if-nez v0, :cond_0

    .line 1096
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.intent.action.IMS_CONFIG_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1097
    const-string v2, "item"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1098
    const-string p1, "value"

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1099
    iget-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1101
    :cond_0
    return v0
.end method

.method public setProvisionedValue(II)I
    .locals 3

    .line 1076
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setProvisionedValue"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    .line 1078
    const-string p1, "ImsConfigImpl"

    const-string p2, "VoWiFi Roaming: value can\'t be changed"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    const/4 p1, 0x1

    return p1

    .line 1081
    :cond_0
    const/4 v0, 0x7

    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;

    invoke-direct {v1, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;-><init>(II)V

    invoke-direct {p0, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1082
    if-nez v0, :cond_1

    .line 1083
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.intent.action.IMS_CONFIG_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1084
    const-string v2, "item"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1085
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "value"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1086
    iget-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1088
    :cond_1
    return v0
.end method

.method public setVideoQuality(ILcom/android/ims/ImsConfigListener;)V
    .locals 2

    .line 1259
    iget-object p2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    const-string v1, "setVideoQuality"

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setVideoQuality qualiy = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ImsConfigImpl"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    return-void
.end method
